from flask_restful import Resource
from json import loads

from common.db.tobiz import Capacity


class GetCapacity(Resource):

    def _serializer(self, sql_list):
        name_v = []
        month_v = []
        occupation_v = []
        availability_v = []

        for i in sql_list:
            name_v.append(i.setdefault("name"))
            month_v.append(i.setdefault("month"))
            occupation_v.append(i.setdefault("occupation"))
            availability_v.append(i.setdefault("availability"))

        name_s = [name_v[x:x + 3] for x in range(0, len(name_v), 3)]
        month_s = [month_v[x:x + 3] for x in range(0, len(month_v), 3)]
        occupation_s = [occupation_v[x:x + 3]
                        for x in range(0, len(occupation_v), 3)]
        availability_s = [availability_v[x:x + 3]
                          for x in range(0, len(availability_v), 3)]

        name_s[0] = "1-3"
        name_s[1] = "4-6"
        name_s[2] = "7-9"
        name_s[3] = "10-12"

        k = ['occupation', 'name', 'month', 'availability']
        temp_list = []

        for i in range(len(k)):
            temp_dict = {k[0]: occupation_s[i], k[1]: name_s[i], k[2]: month_s[i], k[3]: availability_s[i]}
            temp_list.append(temp_dict)

        q = ['q1', 'q2', 'q3', 'q4']
        out_dict = {}

        for i in range(len(q)):
            out_dict[q[i]] = temp_list[i]

        return out_dict

    def get(self):
        capacity = Capacity.query.all()
        capacity_list = []
        for i in capacity:
            capacity_list.append(loads(i.to_json()))

        serialized_capacity = self._serializer(capacity_list)
        return serialized_capacity
