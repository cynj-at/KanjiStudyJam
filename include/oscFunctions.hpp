// oscFunctions.h


#ifndef __OSC_FUNCTIONS_H__
#define __OSC_FUNCTIONS_H__

#include "oscpack/ip/IpEndpointName.h"
#include "oscpack/ip/NetworkingUtils.h"
#include "oscpack/ip/PacketListener.h"
#include "oscpack/ip/TimerListener.h"
#include "oscpack/ip/UdpSocket.h"
#include "oscpack/osc/MessageMappingOscPacketListener.h"
#include "oscpack/osc/OscException.h"
#include "oscpack/osc/OscHostEndianness.h"
#include "oscpack/osc/OscOutboundPacketStream.h"
#include "oscpack/osc/OscPacketListener.h"
#include "oscpack/osc/OscPrintReceivedElements.h"
#include "oscpack/osc/OscReceivedElements.h"
#include "oscpack/osc/OscTypes.h"
#include <cstdint>




void sendOSCPattern(int32_t nr, int32_t value0, int32_t value1, int32_t value2, int32_t value3, int32_t value4, int32_t value5, int32_t value6, int32_t value7, int32_t value8, int32_t value9, int32_t value10, int32_t value11, int32_t value12, int32_t value13, int32_t value14, int32_t value15) {
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7002));
    char buffer[1024];
   
    osc::OutboundPacketStream packet(buffer, 1024);
    packet << osc::BeginBundleImmediate
           << osc::BeginMessage("/nr")
           << nr 
           << 0
           << value0
           << 1
           << value1
           << 2
           << value2
           << 3
           << value3
           << 4
           << value4
           << 5
           << value5
           << 6
           << value6
           << 7
           << value7
           << 8
           << value8
           << 9
           << value9
           << 10
           << value10
           << 11
           << value11
           << 12
           << value12
           << 13
           << value13
           << 14
           << value14
           << 15
           << value15
           << osc::EndMessage
           << osc::EndBundle;
    transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCInstr(int32_t nr, int32_t value){
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7003));
    char buffer[216];
    osc::OutboundPacketStream packet(buffer, 216);
        packet << osc::BeginBundleImmediate
                << osc::BeginMessage("/nr")
                << nr
                << value
                << osc::EndMessage
                << osc::EndBundle;
        transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCNoteLength(int32_t nr, int32_t value){
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7004));
    char buffer[216];
    osc::OutboundPacketStream packet(buffer, 216);
        packet << osc::BeginBundleImmediate
                << osc::BeginMessage("/nr")
                << nr
                << value
                << osc::EndMessage
                << osc::EndBundle;
        transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCNKeyChange(int32_t cent, int32_t time){
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7005));
    char buffer[216];
    osc::OutboundPacketStream packet(buffer, 216);
        packet << osc::BeginBundleImmediate
                << osc::BeginMessage("/key")
                << cent
                << time
                << osc::EndMessage
                << osc::EndBundle;
        transmitSocket.Send(packet.Data(), packet.Size());
}


void sendOSCNCutOffChange(int32_t cutOff, int32_t time){
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7008));
    char buffer[216];
    osc::OutboundPacketStream packet(buffer, 216);
        packet << osc::BeginBundleImmediate
                << osc::BeginMessage("/cutoff")
                << cutOff
                << time
                << osc::EndMessage
                << osc::EndBundle;
        transmitSocket.Send(packet.Data(), packet.Size());
}



void sendOSCNAutoStart(int32_t start){
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7006));
    char buffer[216];
    osc::OutboundPacketStream packet(buffer, 216);
        packet << osc::BeginBundleImmediate
                << osc::BeginMessage("/start")
                << start
                << osc::EndMessage
                << osc::EndBundle;
        transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCNAutoEnd(int32_t end){
    UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7006));
    char buffer[216];
    osc::OutboundPacketStream packet(buffer, 216);
        packet << osc::BeginBundleImmediate
                << osc::BeginMessage("/end")
                << end
                << osc::EndMessage
                << osc::EndBundle;
        transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCInstrOff(int32_t off){
        UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7007));
        char buffer[216];
        osc::OutboundPacketStream packet(buffer, 216);
                packet << osc::BeginBundleImmediate
                        << osc::BeginMessage("/off")
                        << off
                        << osc::EndMessage
                        << osc::EndBundle;
                transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCChangeRhythm(int32_t rhyh){
        UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7009));
        char buffer[216];
        osc::OutboundPacketStream packet(buffer, 216);
                packet << osc::BeginBundleImmediate
                        << osc::BeginMessage("/rhyh")
                        << rhyh
                        << osc::EndMessage
                        << osc::EndBundle;
                transmitSocket.Send(packet.Data(), packet.Size());
}

void sendOSCReset(int32_t reset){
        UdpTransmitSocket transmitSocket(IpEndpointName("127.0.0.1", 7010));
        char buffer[216];
        osc::OutboundPacketStream packet(buffer, 216);
                packet << osc::BeginBundleImmediate
                        << osc::BeginMessage("/reset")
                        << reset
                        << osc::EndMessage
                        << osc::EndBundle;
                transmitSocket.Send(packet.Data(), packet.Size());
}

#endif // OSC_FUNCTIONS_H