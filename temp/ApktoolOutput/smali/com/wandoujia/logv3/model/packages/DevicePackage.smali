.class public final Lcom/wandoujia/logv3/model/packages/DevicePackage;
.super Lcom/squareup/wire/Message;
.source "DevicePackage.java"


# static fields
.field public static final DEFAULT_ANDROID_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_BRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_CPU:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_ROOT:Ljava/lang/Boolean; = null

.field public static final DEFAULT_LAUNCHER_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_MAC:Ljava/lang/String; = ""

.field public static final DEFAULT_MEMORY_SIZE:Ljava/lang/Long; = null

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_OS:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_BIT:Ljava/lang/Integer; = null

.field public static final DEFAULT_OS_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_ROM_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ROM_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SCREEN:Ljava/lang/String; = ""

.field public static final DEFAULT_SDCARD1_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_SDCARD2_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_SDK_INT:Ljava/lang/Integer;


# instance fields
.field public final android_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final brand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cpu:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_root:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final launcher_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final memory_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os_bit:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rom_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rom_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final screen:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sdcard1_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sdcard2_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sdk_int:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->DEFAULT_SDK_INT:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->DEFAULT_IS_ROOT:Ljava/lang/Boolean;

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->DEFAULT_OS_BIT:Ljava/lang/Integer;

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->DEFAULT_MEMORY_SIZE:Ljava/lang/Long;

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->DEFAULT_SDCARD1_SIZE:Ljava/lang/Long;

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->DEFAULT_SDCARD2_SIZE:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 154
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_version:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdk_int:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdk_int:Ljava/lang/Integer;

    .line 157
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->model:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->brand:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->is_root:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->is_root:Ljava/lang/Boolean;

    .line 160
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_version:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->rom_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_name:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->launcher_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->launcher_name:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->cpu:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->cpu:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->screen:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->screen:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->mac:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imei:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->os_bit:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_bit:Ljava/lang/Integer;

    .line 168
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->memory_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->memory_size:Ljava/lang/Long;

    .line 169
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard1_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard1_size:Ljava/lang/Long;

    .line 170
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->sdcard2_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard2_size:Ljava/lang/Long;

    .line 171
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->android_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->android_id:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imsi:Ljava/lang/String;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/DevicePackage;-><init>(Lcom/wandoujia/logv3/model/packages/DevicePackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    if-ne p1, p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 179
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;

    .line 180
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_version:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdk_int:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdk_int:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->model:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->brand:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->is_root:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->is_root:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_version:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->launcher_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->launcher_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->cpu:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->cpu:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->screen:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->screen:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->mac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_bit:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_bit:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->memory_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->memory_size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard1_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard1_size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard2_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard2_size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->android_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->android_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DevicePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 203
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->hashCode:I

    .line 204
    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 206
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_version:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdk_int:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdk_int:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 208
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->model:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 209
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->brand:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 210
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->is_root:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->is_root:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 211
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_version:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 212
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_name:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->rom_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 213
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->launcher_name:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->launcher_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 214
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->cpu:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->cpu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 215
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->screen:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 216
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->mac:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 217
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imei:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 218
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_bit:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->os_bit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->memory_size:Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->memory_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard1_size:Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard1_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 221
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard2_size:Ljava/lang/Long;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->sdcard2_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->android_id:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->android_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 223
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->imsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 224
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/DevicePackage;->hashCode:I

    .line 226
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 205
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 207
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 208
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 209
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 210
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 211
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 212
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 213
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 214
    goto/16 :goto_9

    :cond_c
    move v0, v1

    .line 215
    goto/16 :goto_a

    :cond_d
    move v0, v1

    .line 216
    goto/16 :goto_b

    :cond_e
    move v0, v1

    .line 217
    goto :goto_c

    :cond_f
    move v0, v1

    .line 218
    goto :goto_d

    :cond_10
    move v0, v1

    .line 219
    goto :goto_e

    :cond_11
    move v0, v1

    .line 220
    goto :goto_f

    :cond_12
    move v0, v1

    .line 221
    goto :goto_10

    :cond_13
    move v0, v1

    .line 222
    goto :goto_11
.end method
