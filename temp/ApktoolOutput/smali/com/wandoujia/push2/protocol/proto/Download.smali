.class public final Lcom/wandoujia/push2/protocol/proto/Download;
.super Lcom/squareup/wire/Message;
.source "Download.java"


# static fields
.field public static final DEFAULT_MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push2/protocol/proto/Download$Msg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public final messages:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push2/protocol/proto/Download$Msg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/push2/protocol/proto/Download;->DEFAULT_MESSAGES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 30
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    .line 31
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->messages:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/push2/protocol/proto/Download;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/push2/protocol/proto/Download;-><init>(Lcom/wandoujia/push2/protocol/proto/Download$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/push2/protocol/proto/Download;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 36
    if-ne p1, p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/push2/protocol/proto/Download;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 38
    :cond_2
    check-cast p1, Lcom/wandoujia/push2/protocol/proto/Download;

    .line 39
    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Download;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Download;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->hashCode:I

    .line 46
    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->hashCode()I

    move-result v0

    .line 48
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 49
    iput v0, p0, Lcom/wandoujia/push2/protocol/proto/Download;->hashCode:I

    .line 51
    :cond_0
    return v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
