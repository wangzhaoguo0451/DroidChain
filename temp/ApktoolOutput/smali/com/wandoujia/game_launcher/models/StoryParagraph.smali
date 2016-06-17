.class public Lcom/wandoujia/game_launcher/models/StoryParagraph;
.super Ljava/lang/Object;
.source "StoryParagraph.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private item:Lcom/wandoujia/game_launcher/models/ParagraphContent;

.field private type:Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;


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
.method public getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/game_launcher/models/StoryParagraph;->item:Lcom/wandoujia/game_launcher/models/ParagraphContent;

    return-object v0
.end method

.method public getType()Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/game_launcher/models/StoryParagraph;->type:Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;

    return-object v0
.end method
