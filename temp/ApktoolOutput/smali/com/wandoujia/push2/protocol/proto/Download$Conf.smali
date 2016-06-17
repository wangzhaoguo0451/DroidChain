.class public final Lcom/wandoujia/push2/protocol/proto/Download$Conf;
.super Lcom/squareup/wire/Message;
.source "Download.java"


# static fields
.field public static final DEFAULT_TIMEOUT:Ljava/lang/Integer;


# instance fields
.field public final timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->DEFAULT_TIMEOUT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 93
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;->timeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/wandoujia/push2/protocol/proto/Download$Conf;-><init>(Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 98
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    check-cast p1, Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    iget-object v1, p1, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->hashCode:I

    .line 106
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
