.class public final Lcom/wandoujia/api/proto/UserContext;
.super Lcom/squareup/wire/Message;
.source "UserContext.java"


# static fields
.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long; = null

.field public static final DEFAULT_UDID:Ljava/lang/String; = ""


# instance fields
.field public final coordinate:Lcom/wandoujia/api/proto/Coordinate;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final udid:Ljava/lang/String;
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

    sput-object v0, Lcom/wandoujia/api/proto/UserContext;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/UserContext$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 31
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserContext$Builder;->udid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->udid:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserContext$Builder;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->timestamp:Ljava/lang/Long;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserContext$Builder;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/UserContext$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/UserContext;-><init>(Lcom/wandoujia/api/proto/UserContext$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-ne p1, p0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/UserContext;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 40
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/UserContext;

    .line 41
    iget-object v2, p0, Lcom/wandoujia/api/proto/UserContext;->udid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserContext;->udid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserContext;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserContext;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserContext;->timestamp:Ljava/lang/Long;

    .line 42
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserContext;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserContext;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserContext;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    .line 43
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserContext;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 48
    iget v0, p0, Lcom/wandoujia/api/proto/UserContext;->hashCode:I

    .line 49
    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->udid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->udid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 51
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserContext;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserContext;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/UserContext;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Coordinate;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcom/wandoujia/api/proto/UserContext;->hashCode:I

    .line 55
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 50
    goto :goto_0

    :cond_3
    move v0, v1

    .line 51
    goto :goto_1
.end method
