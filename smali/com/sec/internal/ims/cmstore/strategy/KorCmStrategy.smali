.class public Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;
.super Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.source "KorCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;
    }
.end annotation


# static fields
.field public static final SYNC_MAX_BULK_OPTION:I = 0x14


# instance fields
.field private final KOR_STORE_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_DEV_CLIENT_ID:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_DEV_CLIENT_SECRET:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_DEV_DE_PARAM:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_PRD_CLIENT_ID:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_PRD_CLIENT_SECRET:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_PRD_DE_PARAM:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_STG_CLIENT_ID:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_STG_CLIENT_SECRET:Ljava/lang/String;

.field private final SKT_BASIC_AUTH_STG_DE_PARAM:Ljava/lang/String;

.field private mApiFailCount:I

.field private mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mLastFailedAPI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mMno:Lcom/sec/internal/constants/Mno;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    .line 81
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->MULTIMEDIA:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->MULTIMEDIA:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_USER_INVITED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_USER_INVITED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_CONTINUE_ON_ANOTHER_DEVICE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_CONTINUE_ON_ANOTHER_DEVICE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->TEXT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->TEXT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->LOCATION:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->LOCATION:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_GROUP_INVITE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_GROUP_INVITE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_GROUP_INVITE_FAIL:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_GROUP_INVITE_FAIL:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_GROUP_REINVITE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_GROUP_REINVITE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_DISMISS_CHAT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_DISMISS_CHAT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_RENAME_BY_LEADER:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_RENAME_BY_LEADER:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_LEFT_CHAT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_LEFT_CHAT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_ALL_LEFT_CHAT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_ALL_LEFT_CHAT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_GROUPCHAT_CLOSED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_GROUPCHAT_CLOSED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_IS_INVITED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_IS_INVITED:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SYSTEM_ALL_LEFT_CHAT_NO_ADD:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SYSTEM_ALL_LEFT_CHAT_NO_ADD:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->SINGLE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SINGLE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->GROUP:Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$TP_MessageType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->GROUP:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 58
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mMno:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v0, "os"

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->KOR_STORE_NAME:Ljava/lang/String;

    const-string v0, "fa2d462e-6733-438b-9ce6-ece340219487"

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_DEV_CLIENT_ID:Ljava/lang/String;

    const-string v0, "e621e4301820d2f50ef93f4a73113aca"

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_DEV_CLIENT_SECRET:Ljava/lang/String;

    const-string v0, "49a34e35-7c00-469a-a93a-b518c2f2f2d9"

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_STG_CLIENT_ID:Ljava/lang/String;

    const-string v0, "f8d195801bca4fb9359fe1db56ebac59"

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_STG_CLIENT_SECRET:Ljava/lang/String;

    const-string v0, "d11108fc-dac7-4b3c-bc81-5601c789a6f6"

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_PRD_CLIENT_ID:Ljava/lang/String;

    const-string v0, "c896cf0606d7cf46b5944ebe8f71d55b"

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_PRD_CLIENT_SECRET:Ljava/lang/String;

    const-string v0, "ZGV2X21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA="

    .line 70
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_DEV_DE_PARAM:Ljava/lang/String;

    const-string v0, "c3RnX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA="

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_STG_DE_PARAM:Ljava/lang/String;

    const-string v0, "cHJkX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA="

    .line 72
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->SKT_BASIC_AUTH_PRD_DE_PARAM:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KorCmStrategy"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object p1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->KOR:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const-string p1, "application/json"

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mContentType:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mMno:Lcom/sec/internal/constants/Mno;

    const-string p1, "https"

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mProtocol:Ljava/lang/String;

    .line 115
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/16 p1, 0x14

    .line 117
    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkOption:I

    .line 118
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitStart()V

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->initOMASuccessfulCallFlowTranslator()V

    .line 120
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->initOMAFailedCallFlowTranslator()V

    .line 121
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitComplete()V

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->initStandardRetrySchedule()V

    .line 123
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->initMessageAttributeRegistration()V

    .line 124
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->initOmaRetryVariables()V

    return-void
.end method

.method private clearOmaRetryVariables()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear oma retry variables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 487
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    const/4 v0, 0x0

    .line 488
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    .line 489
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    return-void
.end method

.method private getDecryptPasswordBasic()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisAuthRoot()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dev"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ZGV2X21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA="

    .line 194
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v0, "stg"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "c3RnX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA="

    .line 196
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v0, "rapi.rcsoasis.kr"

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "cHJkX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA="

    .line 198
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private getDecryptPasswordBearer(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 205
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getMcsClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getDecryptPasswordBasic()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x1a

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private getHandlerClassName(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Ljava/lang/String;
    .locals 1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 385
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz v0, :cond_0

    .line 386
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 387
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    if-eqz v0, :cond_1

    .line 388
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 389
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-eqz v0, :cond_2

    .line 390
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 391
    :cond_2
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v0, :cond_3

    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz p1, :cond_4

    .line 392
    :cond_3
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getRCSMessageType(I)I
    .locals 2

    .line 519
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageTypeMapping:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V
    .locals 2

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    .line 456
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed count increment 1, failed count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 460
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 461
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail count keep same["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], lastFailedAPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 462
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentFailedAPI: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initMessageAttributeRegistration()V
    .locals 3

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$P$ASSERTED$SERVICE"

    .line 499
    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;->p_asserted_service:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    const-string v2, "Message-Context"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    const-string v2, "Direction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    const-string v2, "To"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    const-string v2, "Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$TYPE"

    const-string v2, "Content-Type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    const-string v2, "TextContent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONVERSATION$ID"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;->conversation_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EXTENDED$RCS"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;->extended_rcs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGEBODY"

    const-string v2, "MessageBody"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CHIPLIST"

    const-string v2, "ChipList"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TRAFFICTYPE"

    const-string v2, "Traffic-Type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SAFETY"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;->safety:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method

.method private initOMAFailedCallFlowTranslator()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->initOmaFailureCommonFlow()V

    return-void
.end method

.method private initOMASuccessfulCallFlowTranslator()V
    .locals 0

    .line 527
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->initOmaSuccessCommonFlow()V

    return-void
.end method

.method private initOmaRetryVariables()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOmaRetryCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    const/4 v0, 0x1

    .line 379
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxRetryCounter:I

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMA fail count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initStandardRetrySchedule()V
    .locals 3

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x0

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x61a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1e848

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x98968

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearOmaRetryData()V
    .locals 0

    .line 494
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->clearOmaRetryVariables()V

    return-void
.end method

.method public decrypt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 217
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "encrypted_data"

    .line 218
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x18

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 224
    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p2, :cond_0

    .line 227
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getDecryptPasswordBearer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getDecryptPasswordBasic()Ljava/lang/String;

    move-result-object p2

    .line 232
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 234
    new-instance p2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {p2, v2, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const-string p1, "AES/GCM/NoPadding"

    .line 235
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x2

    .line 236
    invoke-virtual {p1, v2, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 237
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 238
    new-instance p2, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "\\\""

    const-string v0, "\""

    .line 239
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\\\"

    const-string v0, "\\"

    .line 240
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getAdaptedRetrySchedule(I)I
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAuthorizationBasic()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisAuthRoot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "e621e4301820d2f50ef93f4a73113aca"

    const-string v1, "fa2d462e-6733-438b-9ce6-ece340219487"

    .line 165
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getBasicPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {v1, p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v1, "stg"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "f8d195801bca4fb9359fe1db56ebac59"

    const-string v1, "49a34e35-7c00-469a-a93a-b518c2f2f2d9"

    .line 168
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getBasicPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {v1, p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v1, "rapi.rcsoasis.kr"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "c896cf0606d7cf46b5944ebe8f71d55b"

    const-string v1, "d11108fc-dac7-4b3c-bc81-5601c789a6f6"

    .line 171
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getBasicPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {v1, p0}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generateBasicAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public getAuthorizationBearer()Ljava/lang/String;
    .locals 2

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAccessToken()Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getBasicPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "1.0.0"

    return-object p0
.end method

.method public getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    .line 251
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SD"

    goto :goto_0

    :cond_0
    const-string p0, "PD"

    :goto_0
    return-object p0
.end method

.method public getLastFailedApi()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "v1"

    return-object p0
.end method

.method public getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, ":"

    const-string v0, ":::"

    const-string v1, "::"

    .line 304
    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 306
    invoke-static {p1, p2, p3, p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateSmsHashCode(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "os"

    return-object p0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "pager-message"

    .line 266
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-string p0, "multimedia-message"

    .line 268
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string p0, "chat-message"

    .line 270
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "geolocation-message"

    .line 271
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "bot-message"

    .line 272
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string/jumbo p0, "response-message"

    .line 273
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "file-message"

    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0xc

    return p0

    :cond_3
    const-string/jumbo p0, "standalone-message"

    .line 277
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xe

    return p0

    :cond_4
    const-string p0, "imdn-message"

    .line 279
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xd

    return p0

    :cond_5
    const-string/jumbo p0, "voice-message"

    .line 281
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    const-string p0, "conference-message"

    .line 283
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x26

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_0
    const/16 p0, 0xb

    return p0
.end method

.method public handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleNCCommonError api : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryAfter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    const/16 v1, 0x1ad

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-lt p3, v0, :cond_1

    :cond_0
    if-ne p3, v1, :cond_4

    .line 551
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-ne p3, v1, :cond_2

    .line 554
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    const/16 p4, 0x7d1

    invoke-virtual {p0, p4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    add-int/lit16 p4, p0, 0x3e8

    .line 556
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    const/16 p0, 0x191

    if-ne p3, p0, :cond_5

    .line 561
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEncrypted()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isErrorCodeSupported(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 0

    .line 0
    const/16 p0, 0x191

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1ad

    if-eq p1, p0, :cond_1

    const/16 p0, 0x194

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1f4

    if-lt p1, p0, :cond_0

    const/16 p0, 0x258

    if-ge p1, p0, :cond_0

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

.method protected isOmaErrorRuleMatch(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/Object;I)Z
    .locals 4

    .line 349
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getHandlerClassName(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 353
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eq p5, v3, :cond_2

    goto :goto_1

    :cond_2
    move p5, v0

    :goto_1
    if-eq p5, v3, :cond_5

    .line 363
    invoke-static {p5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 364
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], match rule["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_4

    const/16 p0, 0x12c

    if-ge p1, p0, :cond_4

    .line 368
    invoke-interface {p3, p2, p5, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_3

    .line 370
    :cond_4
    invoke-interface {p3, p5, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 7

    const/4 v0, 0x0

    .line 430
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 431
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result v1

    const-string v2, "OMA API failed "

    if-lt v0, v1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times before, OMA API retired more than "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times, pop up error screen"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 432
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->clearOmaRetryVariables()V

    .line 436
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaFailExceedMaxCount()V

    return-void

    .line 439
    :cond_0
    iget p2, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getAdaptedRetrySchedule(I)I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v3, 0x3e8

    if-lez p4, :cond_1

    int-to-long v5, p4

    mul-long/2addr v5, v3

    .line 441
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 443
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times beforeGo ahead fallback to SessionGen after "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v0, v3

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 446
    sget-object p4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p4

    iput p4, p2, Landroid/os/Message;->what:I

    .line 447
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 449
    invoke-direct {p0, p3, p1}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->clearOmaRetryVariables()V

    :cond_0
    return-void
.end method

.method protected retryIfAvailable(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " retryIfAvailable : request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1ad

    if-ne p3, v1, :cond_0

    .line 575
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 576
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object p3

    const/16 v0, 0x7d1

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p3

    add-int/lit16 p3, p3, 0x3e8

    .line 575
    invoke-interface {p1, p2, p0, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->getAdaptedRetrySchedule(I)I

    move-result v0

    .line 579
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
    .locals 9

    .line 324
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    .line 325
    instance-of v0, p2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v0, :cond_0

    const-string v0, "NMS"

    goto :goto_0

    :cond_0
    const-string v0, "NC"

    :goto_0
    move-object v7, v0

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], res code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v6

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p6

    .line 328
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->isOmaErrorRuleMatch(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/Object;I)Z

    move-result p4

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    .line 330
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], isOmaErrorRuleMatch"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6

    .line 335
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->shouldCareAfterProcessOMACommonCase(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], match common cases"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6

    .line 340
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] catch call, return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method protected shouldCareAfterProcessOMACommonCase(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z
    .locals 2

    .line 402
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p3

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-lt p3, v0, :cond_1

    :cond_0
    const/16 v0, 0x1ad

    if-ne p3, v0, :cond_2

    .line 404
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->retryIfAvailable(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x191

    const/4 v1, 0x1

    if-ne p3, v0, :cond_4

    .line 406
    iget p3, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result v0

    if-lt p3, v0, :cond_3

    .line 407
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OMA API failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mApiFailCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " times before, OMA API retired more than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " times"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->clearOmaRetryVariables()V

    return v1

    .line 411
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 412
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    return v1
.end method

.method public shouldStopSendingAPIwhenNetworklost()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
