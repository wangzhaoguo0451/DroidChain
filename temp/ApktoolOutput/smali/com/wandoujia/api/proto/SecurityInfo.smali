.class public final Lcom/wandoujia/api/proto/SecurityInfo;
.super Lcom/squareup/wire/Message;
.source "SecurityInfo.java"


# static fields
.field public static final DEFAULT_FAILED_INFO:Ljava/lang/String; = ""

.field public static final DEFAULT_PROVIDER:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Ljava/lang/String; = ""


# instance fields
.field public final failed_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final provider:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/SecurityInfo$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 27
    iget-object v0, p1, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->failed_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->failed_info:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->provider:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->provider:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->status:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/SecurityInfo$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/SecurityInfo;-><init>(Lcom/wandoujia/api/proto/SecurityInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    if-ne p1, p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/SecurityInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 36
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/SecurityInfo;

    .line 37
    iget-object v2, p0, Lcom/wandoujia/api/proto/SecurityInfo;->failed_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SecurityInfo;->failed_info:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SecurityInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SecurityInfo;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SecurityInfo;->provider:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SecurityInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SecurityInfo;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SecurityInfo;->status:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SecurityInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 44
    iget v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->hashCode:I

    .line 45
    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->failed_info:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->failed_info:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 47
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->provider:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 48
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/SecurityInfo;->status:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/SecurityInfo;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 49
    iput v0, p0, Lcom/wandoujia/api/proto/SecurityInfo;->hashCode:I

    .line 51
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_0

    :cond_3
    move v0, v1

    .line 47
    goto :goto_1
.end method
