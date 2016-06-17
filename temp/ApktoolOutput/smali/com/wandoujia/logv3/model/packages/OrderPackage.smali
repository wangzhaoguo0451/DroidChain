.class public final Lcom/wandoujia/logv3/model/packages/OrderPackage;
.super Lcom/squareup/wire/Message;
.source "OrderPackage.java"


# static fields
.field public static final DEFAULT_APP_KEY_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_CHARGE_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_DEFAULT_CHARGE_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_DEFAULT_MONEY:Ljava/lang/Integer; = null

.field public static final DEFAULT_LINK_ORDER_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_MONEY:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDER_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDER_MONEY:Ljava/lang/Integer; = null

.field public static final DEFAULT_TRADE_STATUS:Ljava/lang/String; = ""


# instance fields
.field public final app_key_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final charge_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final default_charge_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final default_money:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final link_order_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final money:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_money:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trade_status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->DEFAULT_ORDER_ID:Ljava/lang/Integer;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->DEFAULT_LINK_ORDER_ID:Ljava/lang/Integer;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->DEFAULT_APP_KEY_ID:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->DEFAULT_DEFAULT_MONEY:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->DEFAULT_ORDER_MONEY:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->DEFAULT_MONEY:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 82
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->order_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_id:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->link_order_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->link_order_id:Ljava/lang/Integer;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->app_key_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->app_key_id:Ljava/lang/Integer;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->default_charge_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_charge_type:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->default_money:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_money:Ljava/lang/Integer;

    .line 87
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->order_money:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_money:Ljava/lang/Integer;

    .line 88
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->charge_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->charge_type:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->money:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->money:Ljava/lang/Integer;

    .line 90
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->trade_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->trade_status:Ljava/lang/String;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/OrderPackage;-><init>(Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p1, p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 97
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;

    .line 98
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->link_order_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->link_order_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->app_key_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->app_key_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_charge_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_charge_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_money:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_money:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_money:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_money:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->charge_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->charge_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->money:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->money:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->trade_status:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->trade_status:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OrderPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->hashCode:I

    .line 112
    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 114
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->link_order_id:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->link_order_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->app_key_id:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->app_key_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_charge_type:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_charge_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_money:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_money:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_money:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_money:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->charge_type:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->charge_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->money:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->money:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->trade_status:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->trade_status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 122
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage;->hashCode:I

    .line 124
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    :cond_3
    move v0, v1

    .line 114
    goto :goto_1

    :cond_4
    move v0, v1

    .line 115
    goto :goto_2

    :cond_5
    move v0, v1

    .line 116
    goto :goto_3

    :cond_6
    move v0, v1

    .line 117
    goto :goto_4

    :cond_7
    move v0, v1

    .line 118
    goto :goto_5

    :cond_8
    move v0, v1

    .line 119
    goto :goto_6

    :cond_9
    move v0, v1

    .line 120
    goto :goto_7
.end method
