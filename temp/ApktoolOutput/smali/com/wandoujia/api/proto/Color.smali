.class public final Lcom/wandoujia/api/proto/Color;
.super Lcom/squareup/wire/Message;
.source "Color.java"


# static fields
.field public static final DEFAULT_NORMAL:Ljava/lang/Integer;

.field public static final DEFAULT_PRESSED:Ljava/lang/Integer;


# instance fields
.field public final normal:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pressed:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Color;->DEFAULT_NORMAL:Ljava/lang/Integer;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Color;->DEFAULT_PRESSED:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Color$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 30
    iget-object v0, p1, Lcom/wandoujia/api/proto/Color$Builder;->normal:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    .line 31
    iget-object v0, p1, Lcom/wandoujia/api/proto/Color$Builder;->pressed:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Color$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Color;-><init>(Lcom/wandoujia/api/proto/Color$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    if-ne p1, p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Color;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 38
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Color;

    .line 39
    iget-object v2, p0, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Color;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Color;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/wandoujia/api/proto/Color;->hashCode:I

    .line 46
    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 48
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 49
    iput v0, p0, Lcom/wandoujia/api/proto/Color;->hashCode:I

    .line 51
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 47
    goto :goto_0
.end method
