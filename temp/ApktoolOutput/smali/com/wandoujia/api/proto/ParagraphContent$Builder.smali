.class public final Lcom/wandoujia/api/proto/ParagraphContent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ParagraphContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ParagraphContent;",
        ">;"
    }
.end annotation


# instance fields
.field public image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public text_style:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ParagraphContent;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 68
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->text_style:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->text:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ParagraphContent;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ParagraphContent;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->image:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->build()Lcom/wandoujia/api/proto/ParagraphContent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ParagraphContent;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/wandoujia/api/proto/ParagraphContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ParagraphContent;-><init>(Lcom/wandoujia/api/proto/ParagraphContent$Builder;Ld;)V

    return-object v0
.end method

.method public final image(Ljava/util/List;)Lcom/wandoujia/api/proto/ParagraphContent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;)",
            "Lcom/wandoujia/api/proto/ParagraphContent$Builder;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->image:Ljava/util/List;

    .line 86
    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/wandoujia/api/proto/ParagraphContent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->text:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public final text_style(Ljava/lang/String;)Lcom/wandoujia/api/proto/ParagraphContent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/api/proto/ParagraphContent$Builder;->text_style:Ljava/lang/String;

    .line 76
    return-object p0
.end method
