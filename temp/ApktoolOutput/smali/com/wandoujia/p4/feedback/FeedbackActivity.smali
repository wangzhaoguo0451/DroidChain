.class public Lcom/wandoujia/p4/feedback/FeedbackActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "FeedbackActivity.java"


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:Landroid/view/View;

.field private c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Landroid/view/Menu;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lfse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 99
    new-instance v0, Lfse;

    invoke-direct {v0, p0}, Lfse;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->n:Lfse;

    .line 499
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x21

    .line 64
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getTextSize()F

    move-result v2

    const/high16 v3, 0x40a0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->m:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    if-lez p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, p1}, Ld;->c(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020220

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v1, Lhoq;

    invoke-direct {v1, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    const v0, 0x7f0e023a

    new-instance v2, Lfqz;

    invoke-direct {v2}, Lfqz;-><init>()V

    invoke-virtual {v1, v0, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v1}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    return-void

    :pswitch_0
    const v0, 0x7f0e02dd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e02de

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e02d1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e0301

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x2

    const-wide/high16 v8, 0x3fe0

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c015e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0163

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v0, 0x7f0f01f9

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Lfqx;

    invoke-direct {v0, v2}, Lfqx;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    int-to-double v4, v0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v0, v4

    neg-int v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fd0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    neg-int v3, v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    const/16 v5, 0x35

    aget v0, v0, v6

    sub-int v0, v3, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x3ff999999999999aL

    mul-double/2addr v6, v8

    double-to-int v3, v6

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x3ff3333333333333L

    mul-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/feedback/FeedbackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->k:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->setContentView(I)V

    .line 130
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0e02d5

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#24aa42"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lfqu;

    invoke-direct {v1, p0}, Lfqu;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    const v0, 0x7f0c012a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    new-instance v1, Lfrb;

    invoke-direct {v1, p0}, Lfrb;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const v0, 0x7f0c012d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0c012c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0c012b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lfqv;

    invoke-direct {v1, p0}, Lfqv;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d:Landroid/widget/Button;

    new-instance v1, Lfqw;

    invoke-direct {v1, p0}, Lfqw;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lfqy;

    invoke-direct {v0, p0}, Lfqy;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-static {}, Lchv;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/TextUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->n:Lfse;

    if-eqz v2, :cond_3

    iget-object v3, v1, Lfru;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lfru;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfse;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_3
    :goto_0
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v0

    new-instance v1, Lfsd;

    invoke-direct {v1, v0}, Lfsd;-><init>(Lfru;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 135
    const v0, 0x7f0e02cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->setTitle(I)V

    .line 137
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://feedback"

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 140
    return-void

    .line 132
    :cond_4
    :try_start_1
    iget-object v0, v1, Lfru;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0e02e7

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 452
    const v0, 0x7f03002e

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 453
    const v0, 0x7f0c014a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 454
    new-instance v2, Lfra;

    invoke-direct {v2, p0}, Lfra;-><init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v0, 0x7f0e044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Lfp;->a(Landroid/view/MenuItem;I)V

    .line 464
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v0

    iget v0, v0, Lfru;->a:I

    .line 465
    if-lez v0, :cond_0

    .line 466
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v0}, Ld;->c(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 469
    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Lfp;->a(Landroid/view/MenuItem;I)V

    .line 475
    :goto_0
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->l:Landroid/view/Menu;

    .line 476
    return v3

    .line 472
    :cond_0
    const v0, 0x7f0c003f

    invoke-virtual {p0, v5}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020220

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Lfp;->a(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 496
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onDestroy()V

    .line 497
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c003f

    if-ne v1, v2, :cond_0

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 491
    :goto_0
    return v0

    .line 484
    :cond_0
    const v1, 0x7f0e0141

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->finish()V

    goto :goto_0

    .line 487
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->onBackPressed()V

    goto :goto_0

    .line 491
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onResume()V

    .line 110
    invoke-static {}, Lfru;->a()Lfru;

    move-result-object v0

    iget v0, v0, Lfru;->a:I

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(I)V

    .line 111
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackActivity;->g:Landroid/widget/ImageView;

    .line 180
    return-void
.end method
