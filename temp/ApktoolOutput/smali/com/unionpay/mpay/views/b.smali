.class public abstract Lcom/unionpay/mpay/views/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/unionpay/mpay/utils/UPPayEngine$a;
.implements Lcom/unionpay/mpay/views/a;
.implements Lcom/unionpay/mpay/widgets/n$a;


# instance fields
.field public a:Lcfz;

.field public b:Lcem;

.field public c:Lccn;

.field public d:Landroid/content/Context;

.field public e:Lcom/unionpay/mpay/utils/UPPayEngine;

.field public f:I

.field public g:Z

.field public h:Landroid/widget/RelativeLayout;

.field protected i:Landroid/view/ViewGroup;

.field public j:Landroid/widget/RelativeLayout;

.field public k:Lcom/unionpay/mpay/widgets/ac;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->c:Lccn;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mpay/views/b;->g:Z

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->h:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->j:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/unionpay/mpay/views/b;->k:Lcom/unionpay/mpay/widgets/ac;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/views/b;->f:I

    iput-object p1, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const-class v1, Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/utils/UPPayEngine;

    iput-object v0, p0, Lcom/unionpay/mpay/views/b;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    invoke-virtual {v0, v2}, Lcom/unionpay/uppay/PayActivityEx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfz;

    iput-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const-class v1, Lcem;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcem;

    iput-object v0, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    invoke-static {p1}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/b;->c:Lccn;

    const/16 v0, 0x22b8

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/b;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/unionpay/mpay/views/b;->setBackgroundColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPViewBase:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final l()Landroid/widget/RelativeLayout;
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->h:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lccd;->a:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/views/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v2, -0x10406

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v2, v2, Lcfz;->c:Lorg/json/JSONArray;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v0, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-static {v3, v2, v1, v0}, Ld;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lccd;->c:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v1, v1, Lcfz;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Ld;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v1, v1, Lcfz;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/unionpay/mpay/widgets/g;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    const v3, -0x48341c

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/g;-><init>(Landroid/content/Context;I)V

    sget v2, Lccd;->A:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->b:I

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mpay/widgets/q;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v3, v3, Lcfz;->d:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/q;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget v2, Lccd;->c:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mpay/widgets/ac;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/widgets/ac;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/b;->k:Lcom/unionpay/mpay/widgets/ac;

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->k:Lcom/unionpay/mpay/widgets/ac;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    new-instance v2, Lcdp;

    invoke-direct {v2, p0, v0}, Lcdp;-><init>(Lcom/unionpay/mpay/views/b;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mpay/views/b;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/b;->c(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "resp"

    invoke-static {v3, v4}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unionpay/mpay/views/b;->l:Ljava/lang/String;

    const-string v4, "msg"

    invoke-static {v3, v4}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unionpay/mpay/views/b;->m:Ljava/lang/String;

    const-string v4, "params"

    invoke-static {v3, v4}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->l:Ljava/lang/String;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->l:Ljava/lang/String;

    const-string v3, "21"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    move-object v1, v0

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/unionpay/mpay/views/b;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unionpay/mpay/views/b;->c(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/unionpay/mpay/widgets/h;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iput-object p2, v0, Lcfz;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iput-object p1, v0, Lcfz;->Q:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/b;->e(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcdq;

    invoke-direct {v0, p0, p2}, Lcdq;-><init>(Lcom/unionpay/mpay/views/b;Z)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->E:Ljava/lang/String;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 7

    const/4 v6, 0x0

    const v5, -0x110002

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/b;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/b;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/b;->b()V

    invoke-direct {p0}, Lcom/unionpay/mpay/views/b;->l()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mpay/views/b;->a(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lccd;->a:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lccd;->a:I

    invoke-virtual {v1, v3, v6, v3, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/b;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/mpay/views/b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/b;->j()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v0, v0, Lcfz;->x:Lcga;

    const-string v1, "fail"

    iput-object v1, v0, Lcga;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mpay/views/b;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/unionpay/mpay/views/b;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final d(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->N:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->O:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->S:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->T:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->U:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->M:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->V:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->W:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->X:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->Y:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->Z:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lccg;->ab:Lccg;

    iget-object v0, v0, Lccg;->aa:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected d()V
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mpay/views/b;->l()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/b;->j:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected final e()Landroid/widget/RelativeLayout;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/views/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v1, Lcom/unionpay/mpay/views/ab;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/ab;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v2, v2, Lcfz;->h:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v2, v2, Lcfz;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v1, v1, Lcfz;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget v2, v2, Lcfz;->B:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v1}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/b;->f()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lcom/unionpay/mpay/views/aj;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/aj;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/unionpay/mpay/se/a;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/se/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/unionpay/mpay/views/ao;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/ao;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/unionpay/mpay/views/e;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/unionpay/mpay/views/x;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/x;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/unionpay/mpay/views/v;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/v;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/unionpay/mpay/views/s;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/s;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/unionpay/mpay/views/n;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/n;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/unionpay/mpay/views/at;

    iget-object v2, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mpay/views/at;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-boolean v0, v0, Lcfz;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    invoke-virtual {v0}, Lcem;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    invoke-virtual {v0}, Lcem;->b()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->a:Lcfz;

    invoke-static {v0, v1}, Ld;->a(Landroid/content/Context;Lcfz;)V

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    iget-object v1, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v1, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mpay/views/b;

    iget v3, v1, Lcom/unionpay/mpay/views/b;->f:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    iget-object v1, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/unionpay/uppay/PayActivityEx;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/b;->b:Lcem;

    invoke-virtual {v1}, Lcem;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onAttachedToWindow()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/b;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iput-object p0, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->d:Lcom/unionpay/mpay/utils/UPPayEngine$a;

    return-void
.end method
