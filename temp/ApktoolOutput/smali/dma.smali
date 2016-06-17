.class public final Ldma;
.super Lhic;
.source "DetailStoryTextPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0}, Ldma;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 21
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iget-object v1, v1, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iget-object v1, v1, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/StoryParagraph;

    iget-object v1, v1, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iget-object v1, v1, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/StoryParagraph;

    iget-object v1, v1, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v2, v1, Lcom/wandoujia/api/proto/ParagraphContent;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    invoke-static {}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->values()[Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v1, v5, v2

    invoke-virtual {v1}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v2, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget v2, v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->size:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextSize(IF)V

    iget v2, v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->color:I

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextColor(I)V

    iget v2, v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->gravity:I

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setGravity(I)V

    sget-object v2, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->BOLD:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setFont(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)V

    .line 29
    :goto_3
    return-void

    .line 25
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->NORMAL:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->NORMAL:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setFont(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)V

    goto :goto_3

    .line 27
    :cond_4
    invoke-virtual {p0}, Ldma;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
