.class public Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "SendCommentActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/Boolean;

.field private h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->g:Ljava/lang/Boolean;

    .line 68
    new-instance v0, Levw;

    invoke-direct {v0, p0}, Levw;-><init>(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)V

    .line 98
    new-instance v0, Levx;

    invoke-direct {v0, p0}, Levx;-><init>(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->k:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0a019e

    const v4, 0x7f0a016a

    const v2, 0x7f02014e

    const/4 v1, 0x0

    .line 209
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->g:Ljava/lang/Boolean;

    .line 211
    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f0202da

    :goto_1
    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 215
    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v0, 0x7f02014d

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 217
    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v0, 0x7f020270

    :goto_4
    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 222
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 224
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 213
    :cond_1
    const v0, 0x7f0202d8

    goto :goto_1

    :cond_2
    move v0, v2

    .line 215
    goto :goto_2

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    .line 220
    :cond_4
    const v0, 0x7f020272

    goto :goto_4

    .line 222
    :cond_5
    const v2, 0x7f02014c

    goto :goto_5

    .line 224
    :cond_6
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_6
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->j:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Lcom/wandoujia/p4/app/detail/model/CommentSummary;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v0, 0x7f0301d7

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->setContentView(I)V

    .line 169
    const v0, 0x7f0c043b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/CircleAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    .line 170
    const v0, 0x7f0c030f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b:Landroid/widget/EditText;

    .line 171
    const v0, 0x7f0c030c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->c:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0c030e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->d:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0c043c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->e:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->f:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->c:Landroid/widget/TextView;

    new-instance v1, Levy;

    invoke-direct {v1, p0}, Levy;-><init>(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->d:Landroid/widget/TextView;

    new-instance v1, Levz;

    invoke-direct {v1, p0}, Levz;-><init>(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "KEY_OLD_COMMENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getEnjoy()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->h:Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getEnjoy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a(Z)V

    :cond_0
    const-string v0, "KEY_PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->i:Ljava/lang/String;

    const-string v0, "KEY_VERSION_CODE"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->j:J

    const-string v0, "KEY_HAS_SET_LIKE_STATE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KEY_LIKE_STATE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a(Z)V

    .line 205
    :cond_1
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    const v2, 0x7f020247

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->a(Ljava/lang/String;I)V

    .line 206
    :cond_2
    return-void
.end method
