.class public final Lcom/wandoujia/api/proto/StoryParagraph$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StoryParagraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/StoryParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field public item:Lcom/wandoujia/api/proto/ParagraphContent;

.field public type:Ljava/lang/String;

.field public type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/StoryParagraph;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 64
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->type:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/wandoujia/api/proto/StoryParagraph;->type_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->type_name:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iput-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->build()Lcom/wandoujia/api/proto/StoryParagraph;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/StoryParagraph;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/wandoujia/api/proto/StoryParagraph;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/StoryParagraph;-><init>(Lcom/wandoujia/api/proto/StoryParagraph$Builder;Ld;)V

    return-object v0
.end method

.method public final item(Lcom/wandoujia/api/proto/ParagraphContent;)Lcom/wandoujia/api/proto/StoryParagraph$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    .line 82
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/api/proto/StoryParagraph$Builder;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->type:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public final type_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/StoryParagraph$Builder;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->type_name:Ljava/lang/String;

    .line 77
    return-object p0
.end method
