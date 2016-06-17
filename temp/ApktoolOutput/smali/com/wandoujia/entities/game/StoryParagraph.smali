.class public Lcom/wandoujia/entities/game/StoryParagraph;
.super Ljava/lang/Object;
.source "StoryParagraph.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private item:Lcom/wandoujia/entities/game/ParagraphContent;

.field private type:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getItem()Lcom/wandoujia/entities/game/ParagraphContent;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/game/StoryParagraph;->item:Lcom/wandoujia/entities/game/ParagraphContent;

    return-object v0
.end method

.method public getType()Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/game/StoryParagraph;->type:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    return-object v0
.end method
