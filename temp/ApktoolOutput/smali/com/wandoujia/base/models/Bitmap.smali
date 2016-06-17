.class public final Lcom/wandoujia/base/models/Bitmap;
.super Lcom/squareup/wire/Message;
.source "Bitmap.java"


# static fields
.field public static final DEFAULT_CONTENT:Lcom/squareup/wire/ByteString;


# instance fields
.field public final content:Lcom/squareup/wire/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/squareup/wire/ByteString;->EMPTY:Lcom/squareup/wire/ByteString;

    sput-object v0, Lcom/wandoujia/base/models/Bitmap;->DEFAULT_CONTENT:Lcom/squareup/wire/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/base/models/Bitmap$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 21
    iget-object v0, p1, Lcom/wandoujia/base/models/Bitmap$Builder;->content:Lcom/squareup/wire/ByteString;

    iput-object v0, p0, Lcom/wandoujia/base/models/Bitmap;->content:Lcom/squareup/wire/ByteString;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/base/models/Bitmap$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/base/models/Bitmap;-><init>(Lcom/wandoujia/base/models/Bitmap$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 26
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    .line 27
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/base/models/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/base/models/Bitmap;->content:Lcom/squareup/wire/ByteString;

    check-cast p1, Lcom/wandoujia/base/models/Bitmap;

    iget-object v1, p1, Lcom/wandoujia/base/models/Bitmap;->content:Lcom/squareup/wire/ByteString;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/base/models/Bitmap;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/wandoujia/base/models/Bitmap;->hashCode:I

    .line 34
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/models/Bitmap;->content:Lcom/squareup/wire/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/base/models/Bitmap;->content:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/base/models/Bitmap;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
