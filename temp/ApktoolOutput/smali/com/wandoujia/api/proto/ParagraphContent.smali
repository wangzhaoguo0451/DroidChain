.class public final Lcom/wandoujia/api/proto/ParagraphContent;
.super Lcom/squareup/wire/Message;
.source "ParagraphContent.java"


# static fields
.field public static final DEFAULT_IMAGE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_TEXT_STYLE:Ljava/lang/String; = ""


# instance fields
.field public final image:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final text_style:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ParagraphContent;->DEFAULT_IMAGE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ParagraphContent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 30
    iget-object v0, p1, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->text_style:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->image:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ParagraphContent;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ParagraphContent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ParagraphContent;-><init>(Lcom/wandoujia/api/proto/ParagraphContent$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/wandoujia/api/proto/ParagraphContent;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 37
    if-ne p1, p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ParagraphContent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 39
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ParagraphContent;

    .line 40
    iget-object v2, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ParagraphContent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ParagraphContent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    .line 42
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ParagraphContent;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    .line 47
    iget v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->hashCode:I

    .line 48
    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 50
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 52
    iput v0, p0, Lcom/wandoujia/api/proto/ParagraphContent;->hashCode:I

    .line 54
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
