.class public final Lcom/wandoujia/logv3/model/packages/FeedPackage;
.super Lcom/squareup/wire/Message;
.source "FeedPackage.java"


# static fields
.field public static final DEFAULT_DETAIL:Ljava/lang/String; = ""

.field public static final DEFAULT_IDENTITY:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TEMPLATE:Ljava/lang/String; = ""


# instance fields
.field public final detail:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final identity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 31
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->identity:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->name:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->template:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->detail:Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/FeedPackage;-><init>(Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;

    .line 42
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->identity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->identity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->template:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->template:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->detail:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->detail:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 50
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->hashCode:I

    .line 51
    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->identity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 53
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 54
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->template:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->template:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->detail:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->detail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage;->hashCode:I

    .line 58
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    :cond_3
    move v0, v1

    .line 53
    goto :goto_1

    :cond_4
    move v0, v1

    .line 54
    goto :goto_2
.end method
