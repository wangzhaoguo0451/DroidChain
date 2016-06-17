.class public final Lcom/wandoujia/api/proto/CountDownPoint;
.super Lcom/squareup/wire/Message;
.source "CountDownPoint.java"


# static fields
.field public static final DEFAULT_END_TIME:Ljava/lang/Long; = null

.field public static final DEFAULT_TEMPLATE:Ljava/lang/String; = ""


# instance fields
.field public final end_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CountDownPoint;->DEFAULT_END_TIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/CountDownPoint$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 25
    iget-object v0, p1, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownPoint;->template:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->end_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownPoint;->end_time:Ljava/lang/Long;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/CountDownPoint$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/CountDownPoint;-><init>(Lcom/wandoujia/api/proto/CountDownPoint$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p1, p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/CountDownPoint;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 33
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/CountDownPoint;

    .line 34
    iget-object v2, p0, Lcom/wandoujia/api/proto/CountDownPoint;->template:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CountDownPoint;->template:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CountDownPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CountDownPoint;->end_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CountDownPoint;->end_time:Ljava/lang/Long;

    .line 35
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CountDownPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 40
    iget v0, p0, Lcom/wandoujia/api/proto/CountDownPoint;->hashCode:I

    .line 41
    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/wandoujia/api/proto/CountDownPoint;->template:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/CountDownPoint;->template:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 43
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/CountDownPoint;->end_time:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/CountDownPoint;->end_time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 44
    iput v0, p0, Lcom/wandoujia/api/proto/CountDownPoint;->hashCode:I

    .line 46
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 42
    goto :goto_0
.end method
