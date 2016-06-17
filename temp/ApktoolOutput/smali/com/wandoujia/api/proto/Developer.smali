.class public final Lcom/wandoujia/api/proto/Developer;
.super Lcom/squareup/wire/Message;
.source "Developer.java"


# static fields
.field public static final DEFAULT_EMAIL:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""


# instance fields
.field public final email:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Developer;->DEFAULT_ID:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Developer$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 28
    iget-object v0, p1, Lcom/wandoujia/api/proto/Developer$Builder;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Developer;->email:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/wandoujia/api/proto/Developer$Builder;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Developer;->id:Ljava/lang/Long;

    .line 30
    iget-object v0, p1, Lcom/wandoujia/api/proto/Developer$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Developer$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Developer;-><init>(Lcom/wandoujia/api/proto/Developer$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Developer;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 37
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Developer;

    .line 38
    iget-object v2, p0, Lcom/wandoujia/api/proto/Developer;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Developer;->email:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Developer;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Developer;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Developer;->id:Ljava/lang/Long;

    .line 39
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Developer;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Developer;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 45
    iget v0, p0, Lcom/wandoujia/api/proto/Developer;->hashCode:I

    .line 46
    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/wandoujia/api/proto/Developer;->email:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Developer;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 48
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Developer;->id:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Developer;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 49
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Developer;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 50
    iput v0, p0, Lcom/wandoujia/api/proto/Developer;->hashCode:I

    .line 52
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 47
    goto :goto_0

    :cond_3
    move v0, v1

    .line 48
    goto :goto_1
.end method
