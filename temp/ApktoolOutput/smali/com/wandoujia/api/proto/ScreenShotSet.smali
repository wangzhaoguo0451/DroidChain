.class public final Lcom/wandoujia/api/proto/ScreenShotSet;
.super Lcom/squareup/wire/Message;
.source "ScreenShotSet.java"


# static fields
.field public static final DEFAULT_NORMAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SMALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final normal:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final small:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ScreenShotSet;->DEFAULT_NORMAL:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ScreenShotSet;->DEFAULT_SMALL:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ScreenShotSet$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 26
    iget-object v0, p1, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->normal:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ScreenShotSet;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    .line 27
    iget-object v0, p1, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->small:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ScreenShotSet;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ScreenShotSet$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ScreenShotSet;-><init>(Lcom/wandoujia/api/proto/ScreenShotSet$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/wandoujia/api/proto/ScreenShotSet;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/wandoujia/api/proto/ScreenShotSet;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-ne p1, p0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ScreenShotSet;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 34
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ScreenShotSet;

    .line 35
    iget-object v2, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ScreenShotSet;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    .line 36
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ScreenShotSet;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 41
    iget v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->hashCode:I

    .line 42
    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 44
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet;->hashCode:I

    .line 47
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 43
    goto :goto_0
.end method
