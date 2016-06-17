.class public final Lcom/wandoujia/api/proto/GiftDetail;
.super Lcom/squareup/wire/Message;
.source "GiftDetail.java"


# static fields
.field public static final DEFAULT_CDKEY:Ljava/lang/String; = ""

.field public static final DEFAULT_CDKEY_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_DIRECTIONS:Ljava/lang/String; = ""

.field public static final DEFAULT_END_DATE_STAMP:Ljava/lang/Long; = null

.field public static final DEFAULT_EXCHANGE_DATE_RANGE:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_IS_RECEIVED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PROVIDE_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_RECEIVED_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_REMNANT_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_SPECIAL_ACTION:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final cdkey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cdkey_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final directions:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final end_date_stamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final exchange_date_range:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_received:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final provide_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final received_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final remnant_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final special_action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/GiftDetail;->DEFAULT_RECEIVED_COUNT:Ljava/lang/Integer;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/GiftDetail;->DEFAULT_REMNANT_COUNT:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/GiftDetail;->DEFAULT_IS_RECEIVED:Ljava/lang/Boolean;

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/GiftDetail;->DEFAULT_ID:Ljava/lang/Long;

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/GiftDetail;->DEFAULT_END_DATE_STAMP:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/GiftDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 74
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->received_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->received_count:Ljava/lang/Integer;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->remnant_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->remnant_count:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->is_received:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->exchange_date_range:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->exchange_date_range:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->directions:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->directions:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->cdkey:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->special_action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->cdkey_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey_id:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->provide_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail$Builder;->end_date_stamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->end_date_stamp:Ljava/lang/Long;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/GiftDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/GiftDetail;-><init>(Lcom/wandoujia/api/proto/GiftDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/GiftDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/GiftDetail;

    .line 95
    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->received_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->received_count:Ljava/lang/Integer;

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->remnant_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->remnant_count:Ljava/lang/Integer;

    .line 99
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    .line 100
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->exchange_date_range:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->exchange_date_range:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->directions:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->directions:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    .line 105
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->cdkey_id:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->end_date_stamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/GiftDetail;->end_date_stamp:Ljava/lang/Long;

    .line 108
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/GiftDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 113
    iget v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->hashCode:I

    .line 114
    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 116
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->received_count:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->received_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->remnant_count:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->remnant_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->exchange_date_range:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->exchange_date_range:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->directions:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->directions:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 123
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 124
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 126
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey_id:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 128
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/GiftDetail;->end_date_stamp:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/GiftDetail;->end_date_stamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 129
    iput v0, p0, Lcom/wandoujia/api/proto/GiftDetail;->hashCode:I

    .line 131
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 115
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 116
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 117
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 118
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 119
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 120
    goto :goto_5

    :cond_8
    move v0, v1

    .line 121
    goto :goto_6

    :cond_9
    move v0, v1

    .line 122
    goto :goto_7

    :cond_a
    move v0, v1

    .line 123
    goto :goto_8

    :cond_b
    move v0, v1

    .line 124
    goto :goto_9

    :cond_c
    move v0, v1

    .line 125
    goto :goto_a

    :cond_d
    move v0, v1

    .line 126
    goto :goto_b

    :cond_e
    move v0, v1

    .line 127
    goto :goto_c
.end method
