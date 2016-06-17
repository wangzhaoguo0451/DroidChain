.class public final Lctm;
.super Ldxv;
.source "GameStoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldxv",
        "<",
        "Lcto;",
        ">;"
    }
.end annotation


# static fields
.field private static c:I


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/game_launcher/models/StoryParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/wandoujia/entities/game/GameLiteInfo;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/entities/game/GameLiteInfo;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wandoujia/entities/game/GameLiteInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/game_launcher/models/StoryParagraph;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ldxv;-><init>()V

    .line 49
    iput-object p3, p0, Lctm;->b:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lctm;->d:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lctm;->f:Lcom/wandoujia/entities/game/GameLiteInfo;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lctm;->g:I

    .line 53
    invoke-static {p3}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 58
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_launcher_story_item_view_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->padding_large:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lctm;->c:I

    .line 62
    :cond_1
    invoke-virtual {p0}, Lctm;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/View;)Lux;
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcto;

    invoke-direct {v0, p0, p1}, Lcto;-><init>(Lctm;Landroid/view/View;)V

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lctm;->e:Ljava/util/ArrayList;

    .line 139
    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/models/StoryParagraph;

    .line 140
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getType()Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;

    if-ne v2, v3, :cond_2

    .line 142
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/ImageModel;

    .line 145
    if-eqz v0, :cond_3

    .line 146
    iget-object v3, p0, Lctm;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final synthetic c(Lux;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 36
    check-cast p1, Lcto;

    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lctm;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/models/StoryParagraph;

    iget-object v1, p1, Lcto;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcto;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p1, Lcto;->p:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcto;->o:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1, v7}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    iget-object v1, p1, Lcto;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lctn;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getType()Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lctm;->g:I

    if-le v0, p2, :cond_1

    iget p2, p0, Lctm;->g:I

    :cond_1
    iput p2, p0, Lctm;->g:I

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcto;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcto;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcto;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getTextStyle()Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;

    move-result-object v0

    invoke-static {v1, v0}, Lcto;->a(Landroid/widget/TextView;Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcto;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p1, Lcto;->l:Landroid/widget/RelativeLayout;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->quote_area:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v1, p1, Lcto;->m:Landroid/widget/TextView;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->quote_text_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p1, Lcto;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcto;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->QUOTE:Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;

    invoke-static {v1, v2}, Lcto;->a(Landroid/widget/TextView;Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;)V

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcto;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcto;->o:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1, v3}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    iget-object v1, p1, Lcto;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcto;->o:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getIcon()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->bg_avatar_default:I

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    iget-object v0, p1, Lcto;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;->AUTHOR:Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;

    invoke-static {v0, v1}, Lcto;->a(Landroid/widget/TextView;Lcom/wandoujia/game_launcher/models/ParagraphContent$TextStyle;)V

    :cond_3
    iget-object v0, p1, Lcto;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p1, Lcto;->l:Landroid/widget/RelativeLayout;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_divider:I

    invoke-static {v0, v1}, Ledx;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->quote_text_title:I

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p1, Lcto;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcto;->s:Lctm;

    iget-object v1, v1, Lctm;->f:Lcom/wandoujia/entities/game/GameLiteInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcto;->q:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0}, Lcom/wandoujia/image/view/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p1, Lcto;->r:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1}, Lcom/wandoujia/image/view/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/launcher/launcher/models/ImageModel;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getWidth()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getHeight()I

    move-result v5

    if-eqz v5, :cond_7

    sget v5, Lctm;->c:I

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getWidth()I

    move-result v2

    div-int v2, v5, v2

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_5

    sget v5, Lctm;->c:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p1, Lcto;->q:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v2, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcto;->r:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/ImageModel;

    iget-object v1, p1, Lcto;->p:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcto;->q:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->bg_image_loading:I

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    iget-object v0, p1, Lcto;->r:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v7}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_0

    iget-object v0, p1, Lcto;->r:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v3}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    iget-object v1, p1, Lcto;->r:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/ImageModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->bg_image_loading:I

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    sget v1, Lctm;->c:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p1, Lcto;->q:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lcto;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcto;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcto;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final synthetic d()Lux;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lctm;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcto;

    invoke-direct {v1, p0, v0}, Lcto;-><init>(Lctm;Landroid/view/View;)V

    return-object v1
.end method
