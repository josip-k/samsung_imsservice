.class public Lcom/sec/internal/helper/ImsCallUtil;
.super Ljava/lang/Object;
.source "ImsCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/ImsCallUtil$NOTIFY_CALL_END_MODE;,
        Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;,
        Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCATION_ACQUIRE_TIME:I = 0xfa0

.field public static final ECC_SERVICE_URN_DEFAULT:Ljava/lang/String; = "urn:service:sos"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallUtil"

.field public static final NOT_ALLOWED:Ljava/lang/String; = "NotAllowed"


# direct methods
.method public static synthetic $r8$lambda$U39oHb4EqfzuLJ6wtqdxgr3lZ_8(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->lambda$getVerstat$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tB4CfY_aeqEgJc_SvoYjlx0WOgM(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->lambda$getVerstat$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallEndReasonToFramework(II)I
    .locals 4

    .line 0
    const/4 v0, 0x2

    const/16 v1, 0xc8

    const/16 v2, 0xb

    const/16 v3, 0x70a

    if-ne p0, v0, :cond_3

    const/4 p0, 0x7

    if-eq p1, p0, :cond_2

    if-eq p1, v2, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    const/16 p0, 0x1e6

    return p0

    :cond_2
    const/16 p0, 0x454

    return p0

    :cond_3
    const/4 p0, 0x4

    if-eq p1, p0, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_b

    const/16 p0, 0xc

    if-eq p1, p0, :cond_a

    const/16 p0, 0xe

    if-eq p1, p0, :cond_9

    const/16 p0, 0xf

    if-eq p1, p0, :cond_8

    const/16 p0, 0x14

    if-eq p1, p0, :cond_7

    const/16 p0, 0x15

    if-eq p1, p0, :cond_6

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_5

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_4

    return v1

    :cond_4
    const/16 p0, 0x1778

    return p0

    :cond_5
    const/16 p0, 0x1779

    return p0

    :cond_6
    const/16 p0, 0x6a7

    return p0

    :cond_7
    const/16 p0, 0x1777

    return p0

    :cond_8
    const/16 p0, 0x6a5

    return p0

    :cond_9
    const/16 p0, 0x45b

    return p0

    :cond_a
    const/16 p0, 0x9c7

    return p0

    :cond_b
    const/16 p0, 0x4b1

    return p0

    :cond_c
    return v3

    :cond_d
    const/16 p0, 0x453

    return p0
.end method

.method public static convertCsCallStateToDialogState(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDeregiReason(I)I
    .locals 1

    .line 0
    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const/16 p0, 0xe

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static convertEccCatToUrn(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "urn:service:sos.ambulance"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "urn:service:sos.fire"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "urn:service:sos.mountain"

    return-object p0

    :cond_4
    const/16 v0, 0x14

    if-ne p0, v0, :cond_5

    const-string/jumbo p0, "urn:service:sos.traffic"

    return-object p0

    :cond_5
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_6

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_6
    const-string/jumbo p0, "urn:service:sos"

    return-object p0
.end method

.method public static convertEccCatToUrnSpecificKor(I)Ljava/lang/String;
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "urn:service:sos.police"

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "urn:service:sos.fire"

    return-object p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "urn:service:sos.marine"

    return-object p0

    :cond_2
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "urn:service:unspecified"

    return-object p0

    :cond_3
    const/16 v0, 0x12

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.117"

    return-object p0

    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.113"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    const-string/jumbo v1, "urn:service:sos.country-specific.kr.111"

    if-ne p0, v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    return-object v1

    :cond_7
    const/16 v0, 0x13

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.118"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string/jumbo p0, "urn:service:sos.country-specific.kr.125"

    return-object p0

    :cond_9
    const-string/jumbo p0, "urn:service:sos"

    return-object p0
.end method

.method public static convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I
    .locals 3

    .line 935
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x641

    return p0

    .line 937
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x64a

    return p0

    .line 939
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x644

    if-eqz v0, :cond_2

    return v1

    .line 941
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x648

    return p0

    .line 943
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x655

    return p0

    .line 945
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 947
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 949
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x64f

    return p0

    .line 951
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 953
    :cond_8
    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 955
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 957
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    .line 959
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x5e8

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 1

    .line 602
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    :goto_0
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static convertImsCalltoSrvccCall(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)Landroid/telephony/ims/SrvccCall;
    .locals 3

    .line 1085
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 1086
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x5

    .line 1124
    :goto_0
    :pswitch_7
    new-instance v0, Landroid/telephony/ims/SrvccCall;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Landroid/telephony/ims/SrvccCall;-><init>(Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 1121
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertRecordEventForCmcInfo(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v1, 0x2bd

    if-eq p0, v1, :cond_4

    const/16 v0, 0x2be

    if-eq p0, v0, :cond_2

    const/16 v0, 0x320

    if-eq p0, v0, :cond_1

    const/16 v0, 0x321

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    :cond_4
    :goto_0
    return v0
.end method

.method public static convertSipErrorToFramework(Lcom/sec/internal/constants/Mno;I)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 148
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSipErrorFromUserReason: reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->getMnoSipError(Lcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    .line 150
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/SipError;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0
.end method

.method public static convertSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "%23"

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    .line 300
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "urn:service:sos.police"

    .line 497
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "urn:service:sos.ambulance"

    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string/jumbo v0, "urn:service:sos.fire"

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string/jumbo v0, "urn:service:sos.marine"

    .line 503
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const-string/jumbo v0, "urn:service:sos.mountain"

    .line 505
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x10

    return p0

    :cond_4
    const-string/jumbo v0, "urn:service:sos.traffic"

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x14

    return p0

    :cond_5
    const-string/jumbo v0, "urn:service:sos"

    .line 509
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/16 p0, 0xfe

    return p0
.end method

.method public static getAudioCodec(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    if-nez p0, :cond_0

    .line 864
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_0
    const-string v0, "AMR-WB"

    .line 865
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_1
    const-string v0, "AMR-NB"

    .line 867
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_2
    const-string v0, "EVS-FB"

    .line 869
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 870
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_3
    const-string v0, "EVS-SWB"

    .line 871
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 872
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_4
    const-string v0, "EVS-WB"

    .line 873
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 874
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_5
    const-string v0, "EVS-NB"

    .line 875
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 876
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_6
    const-string v0, "EVS"

    .line 877
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 878
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 880
    :cond_7
    sget-object p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    :goto_0
    return-object p0
.end method

.method public static getAudioMode(I)Ljava/lang/String;
    .locals 1

    .line 0
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "AUTO"

    goto :goto_0

    :cond_0
    const-string p0, "DELAYED_MEDIA_CMC"

    goto :goto_0

    :cond_1
    const-string p0, "DELAYED_MEDIA"

    goto :goto_0

    :cond_2
    const-string p0, "CMC_CS_RELAY"

    goto :goto_0

    :cond_3
    const-string p0, "CMC_AUTO"

    goto :goto_0

    :cond_4
    const-string p0, "STOP"

    goto :goto_0

    :cond_5
    const-string p0, "CPVE"

    goto :goto_0

    :cond_6
    const-string p0, "SAE"

    :goto_0
    return-object p0
.end method

.method public static getCallTypeForRtt(IZ)I
    .locals 12

    .line 0
    const/16 v0, 0x11

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/16 v5, 0x13

    const/4 v6, 0x5

    const/16 v7, 0x12

    const/4 v8, 0x2

    const/16 v9, 0xf

    const/4 v10, 0x1

    const/16 v11, 0xe

    if-eqz p1, :cond_b

    if-ne p0, v10, :cond_0

    return v11

    :cond_0
    if-ne p0, v8, :cond_1

    return v9

    :cond_1
    if-ne p0, v6, :cond_2

    return v2

    :cond_2
    if-ne p0, v3, :cond_3

    return v0

    :cond_3
    if-ne p0, v4, :cond_4

    return v7

    :cond_4
    if-ne p0, v1, :cond_5

    return v5

    :cond_5
    if-ne p0, v7, :cond_6

    return v4

    :cond_6
    if-ne p0, v11, :cond_7

    return v10

    :cond_7
    if-ne p0, v9, :cond_8

    return v8

    :cond_8
    if-ne p0, v0, :cond_9

    return v3

    :cond_9
    if-ne p0, v2, :cond_a

    return v6

    :cond_a
    if-ne p0, v5, :cond_11

    return v1

    :cond_b
    if-ne p0, v11, :cond_c

    return v10

    :cond_c
    if-ne p0, v9, :cond_d

    return v8

    :cond_d
    if-ne p0, v7, :cond_e

    return v4

    :cond_e
    if-ne p0, v5, :cond_f

    return v1

    :cond_f
    if-ne p0, v2, :cond_10

    return v6

    :cond_10
    if-ne p0, v0, :cond_11

    return v3

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static getConferenceUri(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 826
    :try_start_0
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 827
    :try_start_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    .line 829
    :goto_0
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 831
    :goto_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUri()Ljava/lang/String;

    move-result-object p2

    .line 832
    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConferenceUri, confUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUriMccmncType()I

    move-result v3

    const-string v4, "ims.mncXXX.mccXXX.3gppnetwork.org"

    .line 836
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    if-ne v3, p0, :cond_1

    .line 839
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p0, 0x2

    if-eqz v3, :cond_2

    if-ne v3, p0, :cond_3

    .line 843
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p0, :cond_3

    .line 844
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mnc"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mncXXX"

    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mcc"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mccXXX"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 848
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p4, p1, :cond_8

    .line 849
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "313"

    .line 850
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const-string p0, "312"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "670"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_6
    const-string/jumbo p2, "sip:n-way_voice@firstnet.com"

    goto :goto_2

    .line 853
    :cond_7
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isLLA(I)Z

    move-result p0

    if-nez p0, :cond_8

    .line 854
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sip:n-way_voice@"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 855
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ATT confUri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-object p2
.end method

.method public static getIdForString(Ljava/lang/String;)I
    .locals 0

    .line 925
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 930
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private static getMnoSipError(Lcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 1

    .line 154
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    .line 155
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorVzw;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorVzw;-><init>()V

    return-object p0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorKor;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorKor;-><init>()V

    return-object p0

    .line 158
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/sec/internal/constants/Mno;->CBN:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_2

    goto/16 :goto_1

    .line 160
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 162
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_4

    .line 163
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorKdi;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorKdi;-><init>()V

    return-object p0

    .line 164
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_5

    .line 165
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorDcm;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorDcm;-><init>()V

    return-object p0

    .line 166
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_6

    .line 167
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorSbm;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorSbm;-><init>()V

    return-object p0

    .line 168
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_7

    .line 169
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorUscc;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorUscc;-><init>()V

    return-object p0

    .line 170
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_8

    .line 171
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorMdmn;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorMdmn;-><init>()V

    return-object p0

    .line 172
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->MTEL_BOSNIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_9

    .line 173
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorMtelBa;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorMtelBa;-><init>()V

    return-object p0

    .line 174
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/Mno;->NOVA_IS:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_a

    .line 175
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorNovaIs;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorNovaIs;-><init>()V

    return-object p0

    .line 176
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_CY:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_b

    .line 177
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorVodafoneCy;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorVodafoneCy;-><init>()V

    return-object p0

    .line 178
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/Mno;->LMT_LATVIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_c

    .line 179
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorLmtLatvia;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorLmtLatvia;-><init>()V

    return-object p0

    .line 180
    :cond_c
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_d

    .line 181
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorSprint;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorSprint;-><init>()V

    return-object p0

    .line 184
    :cond_d
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorBase;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-object p0

    .line 161
    :cond_e
    :goto_0
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorCTC;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorCTC;-><init>()V

    return-object p0

    .line 159
    :cond_f
    :goto_1
    new-instance p0, Lcom/sec/internal/constants/ims/SipErrorCmccCbn;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorCmccCbn;-><init>()V

    return-object p0
.end method

.method public static getPEmergencyInfo(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p3

    .line 772
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 773
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 774
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 777
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->isCSpire(I)Z

    move-result v2

    const/4 v3, 0x4

    const-string v4, "IEEE-802.11;i-wlan-node-id="

    if-nez v2, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->isUnited(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    .line 779
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->isDSH(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->isDSH5G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 783
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    const-string v2, "0000:0000:0000:0000"

    if-eqz v0, :cond_5

    .line 784
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUriByImpi(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 786
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "E911AID"

    .line 787
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 788
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current address e911aid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 785
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 790
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_9

    .line 792
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "0000000000000000"

    goto/16 :goto_8

    .line 797
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v8, "is_native = ?"

    const-string v0, "1"

    .line 799
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    const-string v11, "msisdn"

    const-string v12, "location_status"

    const-string/jumbo v13, "tc_status"

    const-string v14, "e911_address_id"

    const-string v15, "e911_aid_expiration"

    const-string v16, "e911_server_data"

    const-string v17, "e911_server_url"

    const-string/jumbo v18, "type"

    .line 800
    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v7

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->LINES_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 806
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 807
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 808
    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "temp e911Aid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "null"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object v2, v0

    .line 812
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "final e911Aid = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 814
    :cond_7
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "invalid cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    if-eqz v1, :cond_9

    .line 816
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_8

    .line 804
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v2

    :cond_9
    :goto_5
    move-object v0, v2

    goto :goto_8

    :cond_a
    :goto_6
    const-string v4, "WSS-WIFI-KEY;generic-key="

    goto :goto_8

    .line 778
    :cond_b
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhraseByMno(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .line 1007
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "phrase"

    invoke-virtual {v1, v3, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1009
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "can not find matched phrase.xml"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1013
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1014
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string/jumbo v2, "phrases"

    .line 1017
    invoke-static {p0, v2}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1019
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    .line 1025
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    const-string v5, "mnoname"

    .line 1026
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1027
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v5, "missed_call_sms"

    .line 1028
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1029
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1032
    :cond_4
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1037
    :cond_5
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;
    .locals 6

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 352
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 359
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p2

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p2, v1, :cond_1

    .line 363
    sget-object p1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getRemoteCallerId: dialing number for Urn from display name"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p2

    .line 367
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELKOM_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_2

    .line 368
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p0

    sget-object p1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p0, p1, :cond_2

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 377
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 378
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getRemoteCallerId: indefinite."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "anonymous"

    .line 382
    :cond_3
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->convertSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVerstat(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)Ljava/lang/String;
    .locals 3

    .line 1061
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVerstat()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVerstat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[<>:;@]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 1063
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/helper/ImsCallUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 1064
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1065
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1066
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verstat "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public static isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 711
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCSFBbySIPErrorCode(I)Z
    .locals 3

    .line 386
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCSFBbySIPErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_0
        0x190 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x195 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_0
        0x19f -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_0
        0x1e8 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x25b -> :sswitch_0
        0x25c -> :sswitch_0
        0x25e -> :sswitch_0
        0x458 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isCameraUsingCall(I)Z
    .locals 1

    .line 251
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isClientError(Lcom/sec/ims/util/SipError;)Z
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isCmcPrimaryType(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isCmcSecondaryType(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isDataPreferredModeDuringCalling(Landroid/content/Context;)Z
    .locals 2

    .line 1076
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_preferred_mode_during_calling"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 684
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 689
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isE911Call(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmergencyAudioCall(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmergencyVideoCall(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 701
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 706
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 201
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Forbidden"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Registered"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isImsOutageError(Lcom/sec/ims/util/SipError;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 191
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->IMS_OUTAGE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Outage"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isMultiPdnRat(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNrAvailable(J)Z
    .locals 2

    .line 0
    const-wide/32 v0, 0x80000

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOneWayVideoCall(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOngoingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1

    .line 680
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isP2pPrimaryType(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isRttCall(I)Z
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isRttEmergencyCall(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSrvccAvailable(ILcom/sec/internal/constants/Mno;ZLcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 742
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SRVCC during EPDG connected, ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 746
    :cond_0
    sget-object p2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SRVCC ver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return v0

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/16 p1, 0x8

    if-eq p0, p1, :cond_5

    const/16 p1, 0x9

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    if-ne p0, p1, :cond_6

    .line 760
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p3, p0, :cond_4

    move v0, p2

    :cond_4
    return v0

    .line 756
    :cond_5
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p3, p0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_1

    :cond_6
    return p2

    :cond_7
    :goto_1
    return v0
.end method

.method public static isTPhoneMode(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "telecom"

    .line 716
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 717
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.skt.prod.dialer"

    .line 718
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTPhoneRelaxMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 722
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isTPhoneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 727
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.skt.prod.dialer.sktincallscreen.provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "get_relaxation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 730
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 731
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 732
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 733
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 731
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 735
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    move v1, p0

    :cond_3
    return v1
.end method

.method public static isTimerVzwExpiredError(Lcom/sec/ims/util/SipError;)Z
    .locals 1

    const/16 v0, 0x9c5

    .line 209
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTtyCall(I)Z
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUpgradeCall(II)Z
    .locals 6

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_9

    const/16 v5, 0x9

    if-eq p0, v5, :cond_9

    const/16 v5, 0xa

    if-eq p0, v5, :cond_9

    const/16 v5, 0xb

    if-ne p0, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, v2, :cond_1

    return v3

    :cond_1
    if-ne p0, v1, :cond_3

    if-ne p1, v2, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    if-ne p0, v0, :cond_5

    if-ne p1, v2, :cond_4

    move v3, v4

    :cond_4
    return v3

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const/16 p0, 0x8

    if-ne p1, p0, :cond_6

    move v3, v4

    :cond_6
    return v3

    :cond_7
    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    const/4 p0, 0x6

    if-ne p1, p0, :cond_8

    move v3, v4

    :cond_8
    return v3

    :cond_9
    :goto_0
    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_a

    if-ne p1, v0, :cond_b

    :cond_a
    move v3, v4

    :cond_b
    return v3
.end method

.method public static isVideoCall(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getVerstat$0(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "verstat"

    .line 1063
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVerstat$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "="

    .line 1064
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onConvertSipErrorReason(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 7

    .line 886
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 893
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceType()Ljava/lang/String;

    move-result-object v1

    .line 895
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceReason()Ljava/lang/String;

    move-result-object v2

    .line 896
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object v3

    .line 898
    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceUrn : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 901
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p1, "serviceUrn is Empty"

    .line 902
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne p0, p1, :cond_1

    .line 905
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    const-string/jumbo p0, "urn:service:sos"

    .line 906
    invoke-virtual {v0, p0}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "action is Empty"

    .line 908
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne p0, v0, :cond_3

    .line 911
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p0

    if-nez p0, :cond_3

    .line 912
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY_CSFB:Lcom/sec/ims/util/SipError;

    .line 913
    invoke-virtual {v0, v3}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    .line 916
    invoke-virtual {v0, v3}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static participantStatus(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "pending"

    return-object p0

    :pswitch_0
    const-string p0, "muted-via-focus"

    return-object p0

    :pswitch_1
    const-string p0, "alerting"

    return-object p0

    :pswitch_2
    const-string p0, "disconnected"

    return-object p0

    :pswitch_3
    const-string p0, "disconnecting"

    return-object p0

    :pswitch_4
    const-string p0, "connected"

    return-object p0

    :pswitch_5
    const-string p0, "dialing-out"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p3, :cond_1

    .line 339
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    :cond_1
    sget-object p2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeUriPlusPrefix : ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] -> : ["

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p1
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p2, :cond_1

    .line 326
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 328
    :cond_1
    sget-object p2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUriPlusPrefix : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] -> : ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p1
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 313
    sget-object p0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    :cond_1
    sget-object p1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUriPlusPrefix : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] -> : ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public static validatePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 72
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneNumber: phonenumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method
