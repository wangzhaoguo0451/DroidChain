.class public final Lcom/wandoujia/api/proto/PublisherTimeDetail;
.super Lcom/squareup/wire/Message;
.source "PublisherTimeDetail.java"


# static fields
.field public static final DEFAULT_CREATE_TIME:Ljava/lang/Long;


# instance fields
.field public final create_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->DEFAULT_CREATE_TIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 22
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;->create_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/PublisherTimeDetail;-><init>(Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 27
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/api/proto/PublisherTimeDetail;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    check-cast p1, Lcom/wandoujia/api/proto/PublisherTimeDetail;

    iget-object v1, p1, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/api/proto/PublisherTimeDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->hashCode:I

    .line 35
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
