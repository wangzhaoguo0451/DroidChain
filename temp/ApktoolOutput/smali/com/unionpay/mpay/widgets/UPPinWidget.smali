.class public final Lcom/unionpay/mpay/widgets/UPPinWidget;
.super Lcom/unionpay/mpay/widgets/n;

# interfaces
.implements Lcom/unionpay/mpay/widgets/h$a;


# static fields
.field private static final o:I


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private s:Lcej;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lccd;->n:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/unionpay/mpay/widgets/UPPinWidget;->o:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3fc

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->b:Z

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->c:Ljava/lang/String;

    iput v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    iput-boolean v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->q:Z

    new-instance v0, Lcev;

    invoke-direct {v0, p0}, Lcev;-><init>(Lcom/unionpay/mpay/widgets/UPPinWidget;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    new-instance v0, Lcew;

    invoke-direct {v0, p0}, Lcew;-><init>(Lcom/unionpay/mpay/widgets/UPPinWidget;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->t:Landroid/view/View$OnClickListener;

    iput p2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->a:I

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->m()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3fc

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->b:Z

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->c:Ljava/lang/String;

    iput v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    iput-boolean v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->q:Z

    new-instance v0, Lcev;

    invoke-direct {v0, p0}, Lcev;-><init>(Lcom/unionpay/mpay/widgets/UPPinWidget;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    new-instance v0, Lcew;

    invoke-direct {v0, p0}, Lcew;-><init>(Lcom/unionpay/mpay/widgets/UPPinWidget;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->t:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->m()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/UPPinWidget;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/widgets/UPPinWidget;)I
    .locals 1

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    return v0
.end method

.method public static synthetic c(Lcom/unionpay/mpay/widgets/UPPinWidget;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->g()V

    return-void
.end method

.method public static synthetic d(Lcom/unionpay/mpay/widgets/UPPinWidget;)I
    .locals 1

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->a:I

    return v0
.end method

.method public static synthetic e(Lcom/unionpay/mpay/widgets/UPPinWidget;)I
    .locals 2

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    return v0
.end method

.method public static synthetic f(Lcom/unionpay/mpay/widgets/UPPinWidget;)I
    .locals 2

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    return v0
.end method

.method public static synthetic i()I
    .locals 1

    sget v0, Lcom/unionpay/mpay/widgets/UPPinWidget;->o:I

    return v0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    iput-object p0, v0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    iget-object v1, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->b()V

    return-void
.end method

.method private n()V
    .locals 2

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    iget-object v0, v0, Lcej;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    iget-object v1, v0, Lcej;->a:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcej;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method private o()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const/16 v1, 0x22b8

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->q:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v2}, Lcom/unionpay/mpay/widgets/h;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Lcom/unionpay/mpay/widgets/UPPinWidget;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->h()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->n()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native appendOnce(ILjava/lang/String;)V
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->a:I

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/widgets/UPPinWidget;->getPINBlock(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->a:I

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->getPIN(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mPINCounts =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native clearAll(I)V
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->a:I

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->clearAll(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    :cond_0
    return-void
.end method

.method public final native deleteOnce(I)V
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->h()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    iget-object v1, v1, Lcej;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->n()V

    :cond_0
    return-void
.end method

.method public final native getPIN(I)Ljava/lang/String;
.end method

.method public final native getPINBlock(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final h()V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->f()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcej;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->t:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v2, v3, p0}, Lcej;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->s:Lcej;

    iget-object v0, v2, Lcej;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcej;->a:Landroid/widget/PopupWindow;

    const/16 v3, 0x50

    invoke-virtual {v0, p0, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, v2, Lcej;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, v2, Lcej;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcej;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v3, v2, Lcej;->d:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget v4, Lccd;->n:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v3

    sget v4, Lccd;->i:I

    sub-int/2addr v3, v4

    sget v4, Lccd;->a:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {}, Lcej;->a()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcej;->a()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, v2, Lcej;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v2, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->p:I

    const-string v0, ""

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->b(I)V

    :cond_2
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/unionpay/mpay/widgets/n;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->g()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->d()V

    return-void
.end method
