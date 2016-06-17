.class public final Lcom/wandoujia/api/proto/Action;
.super Lcom/squareup/wire/Message;
.source "Action.java"


# static fields
.field public static final DEFAULT_INTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_URL:Ljava/lang/String; = ""


# instance fields
.field public final intent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Action;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Action$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 43
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action$Builder;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    .line 44
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action$Builder;->intent:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action$Builder;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action$Builder;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Action;->package_name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Action$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Action;-><init>(Lcom/wandoujia/api/proto/Action$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Action;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Action;

    .line 55
    iget-object v2, p0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Action;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Action;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Action;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Action;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Action;->package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Action;->package_name:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Action;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 64
    iget v0, p0, Lcom/wandoujia/api/proto/Action;->hashCode:I

    .line 65
    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 67
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Action;->package_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Action;->package_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/wandoujia/api/proto/Action;->hashCode:I

    .line 73
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    :cond_3
    move v0, v1

    .line 67
    goto :goto_1

    :cond_4
    move v0, v1

    .line 68
    goto :goto_2

    :cond_5
    move v0, v1

    .line 69
    goto :goto_3
.end method
