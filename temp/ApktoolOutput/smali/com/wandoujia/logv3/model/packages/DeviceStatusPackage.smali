.class public final Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;
.super Lcom/squareup/wire/Message;
.source "DeviceStatusPackage.java"


# static fields
.field public static final DEFAULT_ACTIVE_APP:Ljava/lang/String; = ""

.field public static final DEFAULT_AIRPLANE_MODE_ON:Ljava/lang/Boolean; = null

.field public static final DEFAULT_BATTERY:Ljava/lang/Integer; = null

.field public static final DEFAULT_BRIGHTNESS:Ljava/lang/Integer; = null

.field public static final DEFAULT_CHARGING:Ljava/lang/Boolean; = null

.field public static final DEFAULT_EXTRA_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_HEADPHONE_PLUGGED:Ljava/lang/Boolean;

.field public static final DEFAULT_SCREEN_LOCKED:Ljava/lang/Boolean;

.field public static final DEFAULT_TRIGGER_TYPE:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

.field public static final DEFAULT_VELOCITY:Ljava/lang/Float;

.field public static final DEFAULT_VIBRATION_ON:Ljava/lang/Boolean;

.field public static final DEFAULT_VOLUME:Ljava/lang/Integer;


# instance fields
.field public final active_app:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final airplane_mode_on:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final battery:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final brightness:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final charging:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extra_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final headphone_plugged:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final location:Lcom/wandoujia/logv3/model/packages/Location;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
    .end annotation
.end field

.field public final screen_locked:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final velocity:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final vibration_on:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final volume:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_TRIGGER_TYPE:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_BATTERY:Ljava/lang/Integer;

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_CHARGING:Ljava/lang/Boolean;

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_SCREEN_LOCKED:Ljava/lang/Boolean;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_AIRPLANE_MODE_ON:Ljava/lang/Boolean;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_VOLUME:Ljava/lang/Integer;

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_VIBRATION_ON:Ljava/lang/Boolean;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_BRIGHTNESS:Ljava/lang/Integer;

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_HEADPHONE_PLUGGED:Ljava/lang/Boolean;

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->DEFAULT_VELOCITY:Ljava/lang/Float;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 110
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 111
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->battery:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->battery:Ljava/lang/Integer;

    .line 112
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->charging:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->charging:Ljava/lang/Boolean;

    .line 113
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->screen_locked:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->screen_locked:Ljava/lang/Boolean;

    .line 114
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->airplane_mode_on:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->airplane_mode_on:Ljava/lang/Boolean;

    .line 115
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->active_app:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->active_app:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->volume:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->volume:Ljava/lang/Integer;

    .line 117
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->vibration_on:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->vibration_on:Ljava/lang/Boolean;

    .line 118
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->brightness:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->brightness:Ljava/lang/Integer;

    .line 119
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->location:Lcom/wandoujia/logv3/model/packages/Location;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->location:Lcom/wandoujia/logv3/model/packages/Location;

    .line 120
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->headphone_plugged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->headphone_plugged:Ljava/lang/Boolean;

    .line 121
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->velocity:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->velocity:Ljava/lang/Float;

    .line 122
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;->extra_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->extra_msg:Ljava/lang/String;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;-><init>(Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-ne p1, p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 129
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    .line 130
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->battery:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->battery:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->charging:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->charging:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->screen_locked:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->screen_locked:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->airplane_mode_on:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->airplane_mode_on:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->active_app:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->active_app:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->volume:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->volume:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->vibration_on:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->vibration_on:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->brightness:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->brightness:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->location:Lcom/wandoujia/logv3/model/packages/Location;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->location:Lcom/wandoujia/logv3/model/packages/Location;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->headphone_plugged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->headphone_plugged:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->velocity:Ljava/lang/Float;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->velocity:Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->extra_msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->extra_msg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 147
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->hashCode:I

    .line 148
    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->trigger_type:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->hashCode()I

    move-result v0

    .line 150
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->battery:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->battery:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->charging:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->charging:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->screen_locked:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->screen_locked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->airplane_mode_on:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->airplane_mode_on:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 154
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->active_app:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->active_app:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->volume:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->volume:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 156
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->vibration_on:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->vibration_on:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->brightness:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->brightness:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 158
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->location:Lcom/wandoujia/logv3/model/packages/Location;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->location:Lcom/wandoujia/logv3/model/packages/Location;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/Location;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 159
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->headphone_plugged:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->headphone_plugged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->velocity:Ljava/lang/Float;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->velocity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->extra_msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->extra_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 162
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;->hashCode:I

    .line 164
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 149
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 150
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 151
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 152
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 153
    goto :goto_4

    :cond_7
    move v0, v1

    .line 154
    goto :goto_5

    :cond_8
    move v0, v1

    .line 155
    goto :goto_6

    :cond_9
    move v0, v1

    .line 156
    goto :goto_7

    :cond_a
    move v0, v1

    .line 157
    goto :goto_8

    :cond_b
    move v0, v1

    .line 158
    goto :goto_9

    :cond_c
    move v0, v1

    .line 159
    goto :goto_a

    :cond_d
    move v0, v1

    .line 160
    goto :goto_b
.end method
