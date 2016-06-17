.class public final Lcom/wandoujia/api/proto/CountDownText;
.super Lcom/squareup/wire/Message;
.source "CountDownText.java"


# static fields
.field public static final DEFAULT_POINT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CountDownPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final point:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CountDownPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CountDownText;->DEFAULT_POINT:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/CountDownText$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 28
    iget-object v0, p1, Lcom/wandoujia/api/proto/CountDownText$Builder;->point:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/CountDownText;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownText;->point:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/CountDownText$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/CountDownText;-><init>(Lcom/wandoujia/api/proto/CountDownText$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/CountDownText;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 33
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/api/proto/CountDownText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/api/proto/CountDownText;->point:Ljava/util/List;

    check-cast p1, Lcom/wandoujia/api/proto/CountDownText;

    iget-object v1, p1, Lcom/wandoujia/api/proto/CountDownText;->point:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/api/proto/CountDownText;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/wandoujia/api/proto/CountDownText;->hashCode:I

    .line 41
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/CountDownText;->point:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/CountDownText;->point:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/api/proto/CountDownText;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
