.class public final Lcom/wandoujia/api/proto/Trigger;
.super Lcom/squareup/wire/Message;
.source "Trigger.java"


# static fields
.field public static final DEFAULT_PARAMETER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SOURCE:Lcom/wandoujia/api/proto/Trigger$Source;


# instance fields
.field public final parameter:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final source:Lcom/wandoujia/api/proto/Trigger$Source;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->SMS:Lcom/wandoujia/api/proto/Trigger$Source;

    sput-object v0, Lcom/wandoujia/api/proto/Trigger;->DEFAULT_SOURCE:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Trigger;->DEFAULT_PARAMETER:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Trigger$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 28
    iget-object v0, p1, Lcom/wandoujia/api/proto/Trigger$Builder;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Trigger;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 29
    iget-object v0, p1, Lcom/wandoujia/api/proto/Trigger$Builder;->parameter:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Trigger;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Trigger;->parameter:Ljava/util/List;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Trigger$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Trigger;-><init>(Lcom/wandoujia/api/proto/Trigger$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-static {p0}, Lcom/wandoujia/api/proto/Trigger;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 34
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Trigger;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 36
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Trigger;

    .line 37
    iget-object v2, p0, Lcom/wandoujia/api/proto/Trigger;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Trigger;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Trigger;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Trigger;->parameter:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Trigger;->parameter:Ljava/util/List;

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Trigger;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/wandoujia/api/proto/Trigger;->hashCode:I

    .line 44
    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/wandoujia/api/proto/Trigger;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/Trigger;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Trigger$Source;->hashCode()I

    move-result v0

    .line 46
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Trigger;->parameter:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Trigger;->parameter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/wandoujia/api/proto/Trigger;->hashCode:I

    .line 49
    :cond_0
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
