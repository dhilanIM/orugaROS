// Generated by gencpp from file pos_control/DoPositionControlResult.msg
// DO NOT EDIT!


#ifndef POS_CONTROL_MESSAGE_DOPOSITIONCONTROLRESULT_H
#define POS_CONTROL_MESSAGE_DOPOSITIONCONTROLRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pos_control
{
template <class ContainerAllocator>
struct DoPositionControlResult_
{
  typedef DoPositionControlResult_<ContainerAllocator> Type;

  DoPositionControlResult_()
    : q_i(0)  {
    }
  DoPositionControlResult_(const ContainerAllocator& _alloc)
    : q_i(0)  {
  (void)_alloc;
    }



   typedef int32_t _q_i_type;
  _q_i_type q_i;





  typedef boost::shared_ptr< ::pos_control::DoPositionControlResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pos_control::DoPositionControlResult_<ContainerAllocator> const> ConstPtr;

}; // struct DoPositionControlResult_

typedef ::pos_control::DoPositionControlResult_<std::allocator<void> > DoPositionControlResult;

typedef boost::shared_ptr< ::pos_control::DoPositionControlResult > DoPositionControlResultPtr;
typedef boost::shared_ptr< ::pos_control::DoPositionControlResult const> DoPositionControlResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pos_control::DoPositionControlResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pos_control::DoPositionControlResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pos_control::DoPositionControlResult_<ContainerAllocator1> & lhs, const ::pos_control::DoPositionControlResult_<ContainerAllocator2> & rhs)
{
  return lhs.q_i == rhs.q_i;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pos_control::DoPositionControlResult_<ContainerAllocator1> & lhs, const ::pos_control::DoPositionControlResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pos_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pos_control::DoPositionControlResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pos_control::DoPositionControlResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pos_control::DoPositionControlResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e5341c5ed66755df540250f4f2a1279a";
  }

  static const char* value(const ::pos_control::DoPositionControlResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe5341c5ed66755dfULL;
  static const uint64_t static_value2 = 0x540250f4f2a1279aULL;
};

template<class ContainerAllocator>
struct DataType< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pos_control/DoPositionControlResult";
  }

  static const char* value(const ::pos_control::DoPositionControlResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Result\n"
"int32 q_i   #posicion actual\n"
;
  }

  static const char* value(const ::pos_control::DoPositionControlResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q_i);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoPositionControlResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pos_control::DoPositionControlResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pos_control::DoPositionControlResult_<ContainerAllocator>& v)
  {
    s << indent << "q_i: ";
    Printer<int32_t>::stream(s, indent + "  ", v.q_i);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POS_CONTROL_MESSAGE_DOPOSITIONCONTROLRESULT_H
