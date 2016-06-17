.class public final Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;
.super Lcom/squareup/wire/Message;
.source "SubscribePublisherPackage.java"


# static fields
.field public static final DEFAULT_PUBLISHER_DEFAULTSELECTED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_PUBLISHER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLISHER_NICK:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLISHER_SUBSCRIBED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_PUBLISHER_SUBSCRIBEDCOUNT:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLISHER_TYPE:Ljava/lang/String; = ""


# instance fields
.field public final publisher_defaultSelected:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publisher_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publisher_nick:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publisher_subscribed:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publisher_subscribedCount:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publisher_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->DEFAULT_PUBLISHER_SUBSCRIBED:Ljava/lang/Boolean;

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->DEFAULT_PUBLISHER_DEFAULTSELECTED:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 40
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_type:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_id:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_nick:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_subscribedCount:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribedCount:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_subscribed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribed:Ljava/lang/Boolean;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_defaultSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_defaultSelected:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    .line 53
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_nick:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_nick:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribedCount:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribedCount:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribed:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_defaultSelected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_defaultSelected:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 63
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->hashCode:I

    .line 64
    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 66
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_nick:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribedCount:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribedCount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribed:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_defaultSelected:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_defaultSelected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->hashCode:I

    .line 73
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_1

    :cond_4
    move v0, v1

    .line 67
    goto :goto_2

    :cond_5
    move v0, v1

    .line 68
    goto :goto_3

    :cond_6
    move v0, v1

    .line 69
    goto :goto_4
.end method
