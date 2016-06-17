.class public Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "AppCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<",
        "Lews;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:J

.field private g:Lewq;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/Boolean;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private final x:Landroid/text/TextWatcher;

.field private final y:Levl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->k:Ljava/lang/Boolean;

    .line 91
    new-instance v0, Lewd;

    invoke-direct {v0, p0}, Lewd;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->x:Landroid/text/TextWatcher;

    .line 112
    new-instance v0, Lewf;

    invoke-direct {v0, p0}, Lewf;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->y:Levl;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a(ZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 397
    if-eqz p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 401
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 403
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 405
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ContentListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/views/ContentListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    return-void

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->d()V

    .line 408
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0a01a8

    const v1, 0x7f0a00c9

    const/4 v3, 0x0

    .line 380
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->k:Ljava/lang/Boolean;

    .line 382
    iget-object v4, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f0202da

    :goto_0
    invoke-virtual {v4, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 384
    iget-object v4, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->q:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 388
    iget-object v4, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const v0, 0x7f020270

    :goto_2
    invoke-virtual {v4, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 390
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->r:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 392
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->l:Z

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->l:Z

    .line 393
    return-void

    .line 382
    :cond_1
    const v0, 0x7f0202d8

    goto :goto_0

    :cond_2
    move v0, v2

    .line 384
    goto :goto_1

    .line 388
    :cond_3
    const v0, 0x7f020272

    goto :goto_2

    :cond_4
    move v2, v1

    .line 390
    goto :goto_3

    :cond_5
    move v0, v3

    .line 392
    goto :goto_4
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Lewq;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g:Lewq;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 231
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 233
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 236
    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g()V

    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e044f

    sget v3, Ldxa;->b:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v1

    invoke-virtual {v1}, Ldxa;->a()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lhoq;

    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0598

    invoke-virtual {v1, v2}, Lhoq;->a(I)Lhoq;

    const v2, 0x7f0e017e

    invoke-virtual {v1, v2}, Lhoq;->b(I)Lhoq;

    const v2, 0x7f0e00c6

    new-instance v3, Lewn;

    invoke-direct {v3, p0}, Lewn;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    const v2, 0x7f0e0162

    new-instance v3, Lewe;

    invoke-direct {v3}, Lewe;-><init>()V

    invoke-virtual {v1, v2, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0180

    sget v3, Ldxa;->b:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v1

    invoke-virtual {v1}, Ldxa;->a()V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/wandoujia/p4/app/controller/AppCommenter;

    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/app/controller/AppCommenter;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->UNKNOWN:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    :goto_1
    iput-object v0, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->e:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->f:J

    iput-wide v2, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->c:J

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->y:Levl;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->h:Ljava/lang/ref/WeakReference;

    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    invoke-virtual {v1}, Lcom/wandoujia/p4/app/controller/AppCommenter;->a()V

    iget-object v0, v0, Leve;->a:Ljava/util/Map;

    iget-object v2, v1, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->YES:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->NO:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    goto :goto_1
.end method

.method public static synthetic g(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->d()V

    return-void
.end method

.method public static synthetic h(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "comment"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    const-string v1, "login"

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->a:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/wandoujia/account/AccountParams;->c:I

    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    return-void
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lewq;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lewq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g:Lewq;

    .line 247
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g:Lewq;

    return-object v0
.end method

.method protected final a(IILfss;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lews;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(IILfss;)V

    .line 254
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g:Lewq;

    iget-object v0, v0, Lewq;->a:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    .line 259
    if-eqz v0, :cond_2

    .line 260
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->m:Landroid/view/View;

    if-nez v1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    const v2, 0x7f03010e

    invoke-static {v1, v2}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0042

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Leri;

    invoke-direct {v3, v2}, Leri;-><init>(Landroid/view/View;)V

    iget v4, v0, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;->likeCount:I

    iget v0, v0, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;->dislikeCount:I

    invoke-static {v1, v3, v4, v0}, Ldll;->a(Landroid/content/Context;Leri;II)V

    iput-object v2, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->m:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    .line 269
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g:Lewq;

    iget-object v0, v0, Lewq;->b:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 277
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_4
    iget-boolean v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->l:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getEnjoy()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getEnjoy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a(ZZ)V

    goto/16 :goto_0

    .line 264
    :cond_5
    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Leri;

    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->m:Landroid/view/View;

    invoke-direct {v2, v3}, Leri;-><init>(Landroid/view/View;)V

    iget v3, v0, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;->likeCount:I

    iget v0, v0, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;->dislikeCount:I

    invoke-static {v1, v2, v3, v0}, Ldll;->a(Landroid/content/Context;Leri;II)V

    goto :goto_1
.end method

.method protected final b()Leun;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lewm;

    invoke-direct {v0}, Lewm;-><init>()V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_COMMENTS:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 308
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 287
    const v0, 0x7f030008

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->e:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "vc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->f:J

    .line 158
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->i:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->h:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "editMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->j:Z

    .line 161
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f0c030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    .line 167
    const v0, 0x7f0c030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->o:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0c030e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->p:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0c030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->q:Landroid/view/View;

    .line 170
    const v0, 0x7f0c030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->r:Landroid/view/View;

    .line 171
    const v0, 0x7f0c0314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->t:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0c0315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->u:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0c0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->v:Landroid/view/View;

    .line 174
    const v0, 0x7f0c0313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->w:Landroid/view/View;

    .line 175
    const v0, 0x7f0c0310

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->s:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->w:Landroid/view/View;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->t:Landroid/widget/ImageView;

    new-instance v1, Lewh;

    invoke-direct {v1, p0}, Lewh;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->u:Landroid/widget/TextView;

    new-instance v1, Lewi;

    invoke-direct {v1, p0}, Lewi;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-boolean v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->j:Z

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a(Z)V

    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->q:Landroid/view/View;

    new-instance v1, Lewj;

    invoke-direct {v1, p0}, Lewj;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->r:Landroid/view/View;

    new-instance v1, Lewk;

    invoke-direct {v1, p0}, Lewk;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->s:Landroid/widget/TextView;

    new-instance v1, Lewl;

    invoke-direct {v1, p0}, Lewl;-><init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    sget-object v0, Lham;->f:Lham;

    iget-object v1, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APP"

    iget-object v3, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wdj://apps"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/comments"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 228
    return-void

    .line 223
    :cond_0
    const-string v0, "wdj://games"

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method
