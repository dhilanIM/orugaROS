// Generated by gencpp from file pos_control/pos_controlFeedback.msg
// DO NOT EDIT!


#ifndef POS_CONTROL_MESSAGE_POS_CONTROLFEEDBACK_H
#define POS_CONTROL_MESSAGE_POS_CONTROLFEEDBACK_H


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
struct pos_controlFeedback_
{
  typedef pos_controlFeedback_<ContainerAllocator> Type;

  pos_controlFeedback_()
    : q_e(0)  {
    }
  pos_controlFeedback_(const ContainerAllocator& _alloc)
    : q_e(0)  {
  (void)_alloc;
    }



   typedef int32_t _q_e_type;
  _q_e_type q_e;





  typedef boost::shared_ptr< ::pos_control::pos_controlFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pos_control::pos_controlFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct pos_controlFeedback_

typedef ::pos_control::pos_controlFeedback_<std::allocator<void> > pos_controlFeedback;

typedef boost::shared_ptr< ::pos_control::pos_controlFeedback > pos_controlFeedbackPtr;
typedef boost::shared_ptr< ::pos_control::pos_controlFeedback const> pos_controlFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pos_control::pos_controlFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pos_control::pos_controlFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pos_control::pos_controlFeedback_<ContainerAllocator1> & lhs, const ::pos_control::pos_controlFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.q_e == rhs.q_e;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pos_control::pos_controlFeedback_<ContainerAllocator1> & lhs, const ::pos_control::pos_controlFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pos_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pos_control::pos_controlFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pos_control::pos_controlFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pos_control::pos_controlFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5d324708c1e984101536f9f48e03da54";
  }

  static const char* value(const ::pos_control::pos_controlFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5d324708c1e98410ULL;
  static const uint64_t static_value2 = 0x1536f9f48e03da54ULL;
};

template<class ContainerAllocator>
struct DataType< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pos_control/pos_controlFeedback";
  }

  static const char* value(const ::pos_control::pos_controlFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Feedback\n"
"int32 q_e   # error de posicion\n"
"\n"
"\n"
;
  }

  static const char* value(const ::pos_control::pos_controlFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q_e);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pos_controlFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pos_control::pos_controlFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pos_control::pos_controlFeedback_<ContainerAllocator>& v)
  {
    s << indent << "q_e: ";
    Printer<int32_t>::stream(s, indent + "  ", v.q_e);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POS_CONTROL_MESSAGE_POS_CONTROLFEEDBACK_H
