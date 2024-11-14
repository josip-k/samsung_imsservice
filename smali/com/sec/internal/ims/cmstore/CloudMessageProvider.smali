.class public Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
.super Landroid/content/ContentProvider;
.source "CloudMessageProvider.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static PROVIDER_NAME:Ljava/lang/String; = null

.field private static final SIM_1:I = 0x0

.field private static final SIM_2:I = 0x1

.field protected static mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister; = null

.field private static final mBufferDBInitialized:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mDualDBRequired:Z = false

.field protected static sUriMatcher:Landroid/content/UriMatcher; = null

.field private static final simSlot2:Ljava/lang/String; = "/slot2"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 59
    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 60
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    const-string v1, "com.samsung.rcs.cmstore"

    .line 61
    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 62
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const/4 v2, 0x0

    .line 68
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    .line 72
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "smsmessages/#"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspdumessage/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmsaddrmessages/#"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages_partid/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcschatmessage/#"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsftmessage/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessages/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notification/#"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "summarytable/#"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "latestmessage/#"

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allsmsmessages"

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allmmspdumessage"

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "useroptinflag"

    const/16 v4, 0x25

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "max_small_file_size"

    const/16 v4, 0x28

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "smsmessages/slot2/#"

    const/16 v4, 0x2b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspdumessage/slot2/#"

    const/16 v4, 0x2c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmsaddrmessages/slot2/#"

    const/16 v4, 0x2d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages/slot2/#"

    const/16 v4, 0x2e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages_partid/slot2/#"

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcschatmessage/slot2/#"

    const/16 v4, 0x29

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsftmessage/slot2/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessages/slot2/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsparticipants/slot2/*"

    const/16 v4, 0x2a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcssession/slot2/*"

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notification/slot2/#"

    const/16 v4, 0x35

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "summarytable/slot2/#"

    const/16 v4, 0x2f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessageimdn/slot2/*"

    const/16 v4, 0x37

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notificationimdn/slot2/*"

    const/16 v4, 0x48

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingsmsmessages/slot2/*"

    const/16 v4, 0x38

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingmmspdumessage/slot2/*"

    const/16 v4, 0x39

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingrcschatmessage/slot2/*"

    const/16 v4, 0x3a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingrcsftmessage/slot2/*"

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "latestmessage/slot2/#"

    const/16 v4, 0x3e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allsmsmessages/slot2"

    const/16 v4, 0x3c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allmmspdumessage/slot2"

    const/16 v4, 0x3d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "useroptinflag/slot2"

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "max_small_file_size/slot2"

    const/16 v4, 0x49

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmmessages/slot2/*"

    const/16 v4, 0x41

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmprofile/slot2/*"

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmgreeting/slot2/*"

    const/16 v4, 0x42

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmpin/slot2/*"

    const/16 v4, 0x43

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmquota/slot2/*"

    const/16 v4, 0x45

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingvvmmessages/slot2/*"

    const/16 v4, 0x46

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "multilinestatus/slot2/*"

    const/16 v4, 0x47

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsparticipants/*"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "rcssession/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "rcsmessageimdn/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "notificationimdn/*"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmmessages/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmprofile/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmgreeting/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmpin/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmquota/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingsmsmessages/*"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingmmspdumessage/*"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingrcschatmessage/*"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingrcsftmessage/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingvvmmessages/*"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "multilinestatus/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "userdebugflag"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "userdebugstatus/*"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "migrate_success"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "ambs_feature_ver"

    const/16 v3, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized createBufferDBInstance(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    monitor-enter v0

    .line 346
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBufferDBInstance() slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDualDBRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "createBufferDBInstance() DB not loaded"

    .line 348
    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->setDualDBEnable(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 350
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->initBufferDB(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 351
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "createBufferDBInstance() already loaded"

    .line 353
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMaxSmallFileSize(I)Landroid/database/Cursor;
    .locals 4

    .line 1002
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1003
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMaxSmallFileSize()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1005
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxSmallFileSize slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxSmallFileSize: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "max_small_file_size"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 1008
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method

.method private getMultiLineStatus(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 771
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "linenum=?"

    .line 773
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 774
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 777
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "initsync_status"

    .line 779
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 780
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "initupload_status"

    .line 781
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 782
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p2, "syncmessage_status"

    .line 783
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 784
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 774
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 788
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 789
    sget-object p2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object p0
.end method

.method private getNCChannelUrl(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;
    .locals 1

    .line 810
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object p0

    .line 811
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 812
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "resUrl is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "INVALID"

    goto :goto_0

    .line 815
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLastPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getNCCreationTime(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;
    .locals 4

    .line 822
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelCreateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 823
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelCreateTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 824
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 825
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getServerConfig(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;
    .locals 2

    .line 796
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object p0

    .line 797
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serverRoot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dev"

    .line 798
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "DEV"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "stg"

    .line 800
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "STAGING"

    goto :goto_0

    :cond_1
    const-string p0, "PROD"

    :goto_0
    return-object p0
.end method

.method private getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 3

    .line 427
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimSlotBuff mDualDBRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 429
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0x49

    if-gt p1, v0, :cond_1

    const-string p1, "getSimSlotBuff mDualDBRequired slot: 1"

    .line 430
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-boolean p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    if-eqz p0, :cond_0

    .line 432
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 434
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    return-object p0

    .line 437
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    return-object p0
.end method

.method private static initBufferDB(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    .line 358
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    .line 359
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBufferDB() mDualDBRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", for slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    if-eqz v2, :cond_0

    .line 361
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    aput-object p0, v1, v0

    .line 362
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    goto :goto_1

    .line 365
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-static {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    aput-object p0, v0, v2

    .line 369
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "initBufferDB() DB already loaded for single DB Case"

    .line 366
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private needToResetMcsData(ILjava/lang/String;)Z
    .locals 2

    .line 943
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 946
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const-string p1, "mcs_url"

    const-string v0, ""

    .line 947
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 948
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 384
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "group_cotag"

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 389
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 390
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 391
    array-length v3, v0

    .line 393
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 395
    :cond_2
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_7

    .line 398
    aget-object v6, v0, v5

    .line 399
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 400
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    .line 415
    invoke-virtual {v4, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 416
    sget-object v6, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Type default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 409
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 406
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 403
    :cond_6
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 420
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_8
    return-object v2
.end method

.method private static setDualDBEnable(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 336
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 337
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDualDBEnable() non ATT&T/TMOUS case"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDualDBEnable() mDualDBRequired set true for ATT&T/TMOUS case"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 339
    sput-boolean p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 277
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    .line 281
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 284
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 309
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 314
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 304
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x1

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 331
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 376
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 955
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "URI invalid. Use an id-based URI only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 962
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 963
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v2, :cond_2

    const-string v0, "_data"

    .line 970
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    const-string v0, "file_path"

    .line 972
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 974
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 976
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    .line 981
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 983
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "w"

    .line 984
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 986
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 988
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 991
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_3
    const/high16 p1, 0x20000000

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    const-string/jumbo v0, "r"

    .line 995
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    :cond_7
    const-string v0, "+"

    .line 996
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/high16 p2, 0x2000000

    or-int/2addr p1, p2

    .line 997
    :cond_8
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 979
    :cond_9
    :try_start_2
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "File path is null"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 977
    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple items at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 965
    :cond_b
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_c

    .line 962
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, ""

    .line 444
    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v5

    .line 449
    sget-object v4, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_d

    const/16 v7, 0xf

    if-eq v4, v7, :cond_c

    const/16 v7, 0x35

    if-eq v4, v7, :cond_d

    const-string v11, "com.samsung.android.messaging"

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_2

    const/4 v8, 0x3

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_3

    const-string/jumbo v10, "opt_in_flag"

    packed-switch v4, :pswitch_data_4

    packed-switch v4, :pswitch_data_5

    packed-switch v4, :pswitch_data_6

    packed-switch v4, :pswitch_data_7

    packed-switch v4, :pswitch_data_8

    goto/16 :goto_4

    .line 664
    :pswitch_0
    new-instance v4, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "server_config"

    const-string v11, "notification_channel_url"

    const-string v12, "notification_channel_creation_time"

    const-string v13, "notification_channel_lifetime"

    const-string v14, "init_download_status"

    const-string v15, "init_upload_status"

    const-string/jumbo v16, "sync_message_status"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 666
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 667
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USER_DEBUG_STATUS slot "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v10, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    .line 704
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    return-object v9

    .line 671
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_1

    .line 704
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    return-object v9

    :cond_1
    if-nez v2, :cond_2

    .line 676
    :try_start_2
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-ne v2, v6, :cond_5

    .line 678
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v10

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v11

    if-ne v10, v11, :cond_3

    const-string/jumbo v0, "only single sim"

    .line 679
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 704
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    return-object v9

    .line 682
    :cond_3
    :try_start_3
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    .line 688
    :goto_0
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 689
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getServerConfig(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 690
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getNCChannelUrl(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 691
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getNCCreationTime(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 692
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelLifeTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 693
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMultiLineStatus(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v8, :cond_4

    .line 695
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 696
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v1, 0x2

    .line 697
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 699
    :cond_4
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 700
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 701
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 704
    :goto_1
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    move-object v9, v4

    goto/16 :goto_4

    :cond_5
    :try_start_4
    const-string v0, "invalid slot selected"

    .line 685
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    return-object v9

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 664
    :try_start_5
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :pswitch_1
    const-string v0, "USER_DEBUG_FLAG"

    .line 645
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 647
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    .line 649
    :cond_6
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v0, "AMBS_DEBUG"

    const-string v1, "app_id"

    const-string v2, "cps_host_name"

    const-string v3, "auth_host_name"

    const-string/jumbo v4, "retry_time"

    const-string v5, "nc_host_name"

    const-string v6, "mcs_url"

    const-string v7, "oasis_version"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 651
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 652
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 653
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 654
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 655
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 656
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 657
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 658
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 659
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_4

    :pswitch_2
    const-string v0, "QUERY AMBS VERSION "

    .line 743
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    .line 745
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "version_num"

    const-string/jumbo v2, "version_desc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 746
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 747
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "sbsms"

    .line 749
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_4

    .line 762
    :pswitch_3
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMaxSmallFileSize(I)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "OPT_IN_STATUS2"

    .line 732
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 735
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v7

    .line 737
    :cond_7
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 738
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 739
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_4

    .line 759
    :pswitch_5
    invoke-direct {v0, v7}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMaxSmallFileSize(I)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_6
    const/16 v6, 0xd

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 755
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_7
    const-string v0, "OPT_IN_STATUS1"

    .line 708
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 711
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v7

    .line 713
    :cond_8
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 714
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 715
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_4

    :pswitch_8
    const-string v4, "_bufferdbid= ?"

    const/16 v3, 0x24

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_9
    const-string v0, "DATABASE MIGRATE FLAG"

    .line 720
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 723
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMigrateSuccessFlag()Z

    move-result v7

    .line 725
    :cond_9
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v0, "migrate_success"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 726
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 727
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_4

    .line 634
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LASTEST Message DB index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MAX(_bufferdbid)"

    .line 636
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    if-eq v0, v6, :cond_a

    if-eq v0, v8, :cond_a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_a

    const/16 v2, 0x11

    if-ne v0, v2, :cond_e

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, v5

    move/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v1

    move-object/from16 p5, v4

    .line 641
    invoke-virtual/range {p0 .. p5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_b
    const/16 v6, 0x20

    const/4 v10, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 629
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_c
    const/16 v6, 0x1f

    const/4 v10, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 621
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 624
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_d
    const-string/jumbo v8, "syncdirection=? OR syncdirection=?"

    .line 613
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 614
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 615
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0x11

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    .line 616
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_e
    const-string/jumbo v8, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    .line 602
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 603
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 604
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    .line 606
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_f
    const-string/jumbo v8, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    .line 590
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 591
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 592
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    .line 594
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_10
    const-string/jumbo v8, "syncdirection=? OR syncdirection=?"

    .line 579
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 580
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 581
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x4

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    .line 582
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_11
    const-string/jumbo v8, "syncdirection=? OR syncdirection=?"

    .line 569
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 570
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 571
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x3

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    .line 572
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_12
    const-string v4, "linenum= ?"

    const/16 v3, 0x17

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_13
    const-string v4, "_bufferdbid= ?"

    const/16 v3, 0x14

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 544
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_14
    const-string v4, "_bufferdbid= ?"

    const/16 v3, 0x13

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 556
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_15
    const-string v4, "_bufferdbid= ?"

    const/16 v3, 0x12

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 550
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_16
    const-string v4, "_bufferdbid= ?"

    const/16 v3, 0x11

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 538
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    .line 517
    :pswitch_17
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "chat_id= ?"

    move-object v4, v0

    goto :goto_3

    :cond_b
    move-object/from16 v4, p3

    :goto_3
    const/16 v3, 0xa

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 520
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    .line 503
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS_MESSAGE_ID bufferDB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 505
    invoke-virtual {v5, v6, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_19
    const-string v4, "_bufferdbid= ?"

    const/4 v3, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_1a
    const-string v4, "_bufferdbid= ?"

    const/4 v3, 0x7

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 453
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_1b
    const-string v4, "mid= ?"

    const/4 v3, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_1c
    const-string v4, "msg_id= ?"

    const/4 v3, 0x5

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 492
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_1d
    const-string v4, "_bufferdbid= ?"

    const/4 v3, 0x4

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_1e
    const-string v6, "_bufferdbid= ?"

    const/4 v3, 0x3

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move-object/from16 v6, p5

    .line 471
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 474
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_4

    :pswitch_1f
    const-string v4, "chat_id= ?"

    const/4 v3, 0x2

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 465
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_4

    :pswitch_20
    const-string v4, "_bufferdbid= ?"

    const/4 v3, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 459
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_4

    :cond_c
    :pswitch_21
    const-string v4, "imdn_message_id= ?"

    const/4 v3, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    .line 526
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_4

    .line 510
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS_MESSAGES_IMDN bufferDB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 512
    invoke-virtual {v5, v6, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v9

    :cond_e
    :goto_4
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x23
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x27
        :pswitch_6
        :pswitch_5
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x37
        :pswitch_21
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x40
        :pswitch_4
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_8
        :pswitch_d
        :pswitch_12
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 832
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v1

    .line 835
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_8

    const/16 v4, 0x47

    if-eq v2, v4, :cond_8

    const/16 p1, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, p1, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_0
    const/4 p0, 0x7

    .line 838
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_1
    const/4 p0, 0x6

    .line 865
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_2
    const/4 p0, 0x5

    .line 871
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_3
    const/4 p0, 0x4

    .line 859
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_4
    const/4 p0, 0x3

    .line 854
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_5
    const/4 p0, 0x2

    .line 848
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 843
    :pswitch_6
    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :cond_0
    const-string p1, "AMBS_DEBUG"

    .line 883
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 884
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Debug enabled?: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    move-object p4, p1

    goto :goto_0

    :cond_1
    const-string p4, "null"

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 885
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "app_id"

    .line 886
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "cps_host_name"

    .line 887
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "auth_host_name"

    .line 888
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "retry_time"

    .line 889
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nc_host_name"

    .line 890
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcs_url"

    .line 891
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    .line 893
    invoke-static {p1, p4, p3, v1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 896
    sput-boolean v3, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz v0, :cond_3

    .line 898
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    goto :goto_1

    .line 901
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 902
    sput-boolean v4, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 903
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 904
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    const-string p1, "https://rapi.rcsoasis.kr"

    .line 905
    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    .line 908
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 909
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-nez p2, :cond_4

    return v4

    .line 912
    :cond_4
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerVersion()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    move p1, v4

    .line 915
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p2

    if-ge p1, p2, :cond_9

    .line 916
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 917
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->needToResetMcsData(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 918
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 919
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    .line 920
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p2

    .line 921
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 922
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 923
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    .line 925
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDebug()V

    .line 927
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetMcsRestartReceiver()V

    .line 929
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 930
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetDataReceiver()V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 878
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "linenum= ?"

    .line 879
    invoke-virtual {v1, v3, p2, p1, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    :cond_9
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
