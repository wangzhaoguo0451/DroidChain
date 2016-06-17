.class public final Lcto;
.super Lux;
.source "GameStoryAdapter.java"


# instance fields
.field k:Landroid/widget/TextView;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Lcom/wandoujia/image/view/AsyncImageView;

.field p:Landroid/view/View;

.field q:Lcom/wandoujia/image/view/AsyncImageView;

.field r:Lcom/wandoujia/image/view/AsyncImageView;

.field final synthetic s:Lctm;


# direct methods
.method public constructor <init>(Lctm;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcto;->s:Lctm;

    .line 171
    invoke-direct {p0, p2}, Lux;-><init>(Landroid/view/View;)V

    .line 173
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcto;->k:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->image_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcto;->p:Landroid/view/View;

    .line 175
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->image_first:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcto;->q:Lcom/wandoujia/image/view/AsyncImageView;

    .line 176
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->image_second:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcto;->r:Lcom/wandoujia/image/view/AsyncImageView;

    .line 177
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcto;->l:Landroid/widget/RelativeLayout;

    .line 178
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcto;->m:Landroid/widget/TextView;

    .line 179
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_author_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcto;->n:Landroid/widget/TextView;

    .line 180
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->quote_author_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcto;->o:Lcom/wandoujia/image/view/AsyncImageView;

    .line 181
    return-void
.end method

.method static a(Landroid/widget/TextView;Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 193
    sget-object v0, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;

    if-ne p1, v0, :cond_2

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 199
    :goto_0
    iget v0, p1, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->size:I

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    iget v0, p1, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->color:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget v0, p1, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->gravity:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    const/4 v0, 0x0

    iget v1, p1, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->lineHeight:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 204
    :cond_1
    return-void

    .line 197
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0
.end method
