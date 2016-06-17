.class public final Ldxu;
.super Lux;
.source "GameStoryAdapter.java"


# instance fields
.field k:Landroid/widget/TextView;

.field l:Landroid/view/View;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Lcom/wandoujia/image/view/AsyncImageView;

.field p:Landroid/view/View;

.field q:Lcom/wandoujia/image/view/AsyncImageView;

.field r:Lcom/wandoujia/image/view/AsyncImageView;

.field final synthetic s:Ldxs;


# direct methods
.method public constructor <init>(Ldxs;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Ldxu;->s:Ldxs;

    .line 159
    invoke-direct {p0, p2}, Lux;-><init>(Landroid/view/View;)V

    .line 161
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldxu;->k:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->image_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldxu;->p:Landroid/view/View;

    .line 163
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->image_first:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Ldxu;->q:Lcom/wandoujia/image/view/AsyncImageView;

    .line 164
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->image_second:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Ldxu;->r:Lcom/wandoujia/image/view/AsyncImageView;

    .line 165
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldxu;->l:Landroid/view/View;

    .line 166
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldxu;->m:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_author_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldxu;->n:Landroid/widget/TextView;

    .line 168
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_author_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Ldxu;->o:Lcom/wandoujia/image/view/AsyncImageView;

    .line 169
    return-void
.end method

.method static a(Landroid/widget/TextView;Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 182
    iget v0, p1, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->size:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    iget v0, p1, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->color:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget v0, p1, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->gravity:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 181
    goto :goto_0
.end method
