.class public final Lcom/unionpay/mpay/views/n;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/a$b;
.implements Lcom/unionpay/mpay_2/upview/listview/e$a;


# instance fields
.field private l:I

.field private m:Lcom/unionpay/mpay_2/upview/a;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/unionpay/mpay_2/upview/listview/e;

.field private r:Landroid/widget/LinearLayout;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/unionpay/mpay_2/upwidget/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/unionpay/mpay/views/n;->l:I

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->n:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->o:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->q:Lcom/unionpay/mpay_2/upview/listview/e;

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    iput v0, p0, Lcom/unionpay/mpay/views/n;->s:I

    iput v0, p0, Lcom/unionpay/mpay/views/n;->t:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mpay/views/n;->u:I

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->v:Lcom/unionpay/mpay_2/upwidget/c;

    const/16 v0, 0xd

    iput v0, p0, Lcom/unionpay/mpay/views/n;->f:I

    new-instance v0, Lcdy;

    invoke-direct {v0, p0}, Lcdy;-><init>(Lcom/unionpay/mpay/views/n;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/n;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcdz;

    invoke-direct {v0, p0}, Lcdz;-><init>(Lcom/unionpay/mpay/views/n;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/n;->o:Landroid/view/View$OnClickListener;

    const v0, -0x10406

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/n;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/n;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/n;)Lcom/unionpay/mpay_2/upview/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;Lorg/json/JSONArray;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-static {p2, v2}, Lccx;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v3, "type"

    invoke-static {v0, v3}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lccd;->B:I

    sget v5, Lccd;->e:I

    mul-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    const-string v5, "pan"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v1, Lcom/unionpay/mpay/widgets/s;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/s;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/unionpay/mpay/widgets/n;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/n;

    iput-object p0, v0, Lcom/unionpay/mpay/widgets/n;->n:Lcom/unionpay/mpay/widgets/n$a;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    const-string v5, "mobile"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v1, Lcom/unionpay/mpay/widgets/u;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/u;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    const-string v5, "sms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v1, Lcom/unionpay/mpay/widgets/z;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_7
    const-string v5, "cvn2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v1, Lcom/unionpay/mpay/widgets/a;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/a;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_8
    const-string v5, "expire"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v1, Lcom/unionpay/mpay/widgets/af;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/af;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_9
    const-string v5, "pwd"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v1, Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/unionpay/mpay/views/b;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v5, v5, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-direct {v1, v3, v5, v4, v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;-><init>(Landroid/content/Context;IILorg/json/JSONObject;)V

    goto :goto_1

    :cond_a
    const-string v5, "text"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v1, Lcom/unionpay/mpay/widgets/ad;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_b
    const-string v5, "string"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v1, Lcom/unionpay/mpay/widgets/q;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/unionpay/mpay/widgets/q;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_c
    const-string v5, "cert_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v1, Lcom/unionpay/mpay/widgets/b;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/b;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_d
    const-string v5, "cert_type"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v1, Lcom/unionpay/mpay/widgets/c;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/unionpay/mpay/widgets/c;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_e
    const-string v5, "name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v1, Lcom/unionpay/mpay/widgets/r;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/r;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_f
    const-string v5, "hidden"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v1, Lcom/unionpay/mpay/widgets/l;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/unionpay/mpay/widgets/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_10
    const-string v5, "user_name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v1, Lcom/unionpay/mpay/widgets/ae;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/ae;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_11
    const-string v5, "password"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/unionpay/mpay/widgets/y;

    iget-object v3, p0, Lcom/unionpay/mpay/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Lcom/unionpay/mpay/widgets/y;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_1
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/n;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mpay/views/n;->g:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mpay/views/n;->l:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "yes"

    iget v1, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mpay/utils/UPPayEngine;->payingMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v2, v1}, Lcck;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "sid"

    iget-object v3, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v1, v2, Lcck;->c:Ljava/util/HashMap;

    const-string v1, "pay"

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/unionpay/mpay/views/n;)Lcom/unionpay/mpay_2/upwidget/c;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->v:Lcom/unionpay/mpay_2/upwidget/c;

    return-object v0
.end method

.method private g(I)V
    .locals 1

    iput p1, p0, Lcom/unionpay/mpay/views/n;->s:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->q:Lcom/unionpay/mpay_2/upview/listview/e;

    invoke-virtual {v0, p1}, Lcom/unionpay/mpay_2/upview/listview/e;->c(I)V

    return-void
.end method

.method private final l()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v1, v1, Lcfz;->O:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v1, v1, Lcfz;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private m()V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mpay/views/n;->l:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "query"

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v2, v2, Lcfz;->S:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mpay/views/n;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mpay/views/n;->u:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 12

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v10, -0x2

    const/4 v9, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->e:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v1, v1, Lcfz;->P:Lorg/json/JSONArray;

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mpay/views/n;->a(Landroid/widget/LinearLayout;Lorg/json/JSONArray;)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/unionpay/mpay/views/n;->l()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "[{\"placeholder\" : \"\u94f6\u884c\u5361\u5361\u53f7\",\"name\" : \"pan\",\"value\" : \"\u60a8\u5c1a\u672a\u7ed1\u5b9a\u94f6\u884c\u5361\",\"label\" : \"\",\"type\" : \"pan\",\"readonly\" : \"true\",\"tip\" : \"\"}]"

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/n;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v3, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v4, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v5, v4, Lcfz;->aa:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;ILcom/unionpay/mpay_2/upview/a$b;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lccd;->c:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v2, Lccd;->c:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v0, v0, Lcfz;->M:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mpay/views/n;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->q:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/unionpay/mpay_2/upwidget/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/unionpay/mpay_2/upwidget/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/n;->v:Lcom/unionpay/mpay_2/upwidget/c;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v2, v2, Lcfz;->M:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/unionpay/mpay_2/upwidget/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/d;

    move-result-object v0

    iget-object v2, v0, Lcom/unionpay/mpay_2/upwidget/d;->a:Ljava/lang/String;

    new-instance v3, Lcea;

    invoke-direct {v3, p0, v2}, Lcea;-><init>(Lcom/unionpay/mpay/views/n;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/unionpay/mpay_2/upwidget/d;->a(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->v:Lcom/unionpay/mpay_2/upwidget/c;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v4, Lccd;->b:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v0, v3}, Lcom/unionpay/mpay_2/upwidget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->v:Lcom/unionpay/mpay_2/upwidget/c;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v2, v2, Lcfz;->N:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/unionpay/mpay/views/n;->c:Lccn;

    const/16 v4, 0x3f9

    invoke-virtual {v3, v4, v9, v9}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/unionpay/mpay_2/upwidget/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/unionpay/mpay_2/upwidget/d;->a:Ljava/lang/String;

    new-instance v3, Lceb;

    invoke-direct {v3, p0, v2}, Lceb;-><init>(Lcom/unionpay/mpay/views/n;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/unionpay/mpay_2/upwidget/d;->a(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lccd;->e:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/unionpay/mpay/views/n;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v7

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    const/high16 v2, 0x41b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sget v0, Lccd;->j:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->c:Lccn;

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3, v9, v9}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lccd;->e:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/unionpay/mpay_2/upview/listview/e;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    invoke-direct {v1, v2, v3, p0}, Lcom/unionpay/mpay_2/upview/listview/e;-><init>(Landroid/content/Context;Lcfz;Lcom/unionpay/mpay_2/upview/listview/e$a;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/n;->q:Lcom/unionpay/mpay_2/upview/listview/e;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->q:Lcom/unionpay/mpay_2/upview/listview/e;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v2, v2, Lcfz;->o:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/unionpay/mpay/views/n;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v3, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v4, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v5, v4, Lcfz;->aa:Ljava/lang/String;

    move-object v4, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;ILcom/unionpay/mpay_2/upview/a$b;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/unionpay/mpay/views/n;->s:I

    invoke-direct {p0, v0}, Lcom/unionpay/mpay/views/n;->g(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcex;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    invoke-virtual {p1}, Lcex;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/unionpay/mpay/views/n;->g:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "sms"

    iget-object v2, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mpay/views/n;->l:I

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/unionpay/mpay/views/n;->l:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/n;->g()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->c()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/n;->g()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    invoke-static {v0, p1, v2}, Ld;->a(Lcfz;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/n;->c(I)V

    iget v0, p0, Lcom/unionpay/mpay/views/n;->t:I

    invoke-direct {p0, v0}, Lcom/unionpay/mpay/views/n;->g(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/unionpay/mpay/views/n;->s:I

    invoke-direct {p0, v0}, Lcom/unionpay/mpay/views/n;->g(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->q:Lcom/unionpay/mpay_2/upview/listview/e;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/e;->a()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v1, v1, Lcfz;->o:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v2, v2, Lcfz;->aa:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay_2/upview/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v0, v0, Lcfz;->S:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/n;->c(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mpay/views/n;->u:I

    invoke-direct {p0}, Lcom/unionpay/mpay/views/n;->m()V

    goto :goto_0

    :pswitch_3
    const-string v0, "status"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/mpay/views/n;->u:I

    if-lez v1, :cond_3

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/unionpay/mpay/views/n;->m()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/n;->g()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v2, p0, Lcom/unionpay/mpay/views/n;->l:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "result"

    invoke-static {p1, v1}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcfz;->w:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->D:Ljava/lang/String;

    const-string v0, "temporary_pay_flag"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "title"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->q:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/n;->e(I)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/unionpay/mpay/views/n;->u:I

    if-gtz v0, :cond_0

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/n;->c(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->p:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/unionpay/mpay/views/n;->l:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/unionpay/mpay/views/n;->t:I

    invoke-direct {p0, v2}, Lcom/unionpay/mpay/views/n;->g(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/n;->q:Lcom/unionpay/mpay_2/upview/listview/e;

    invoke-virtual {v2}, Lcom/unionpay/mpay_2/upview/listview/e;->a()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/n;->g()V

    invoke-virtual {p0, p1, v1}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->j:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/mpay/widgets/ag;

    iget-object v3, p0, Lcom/unionpay/mpay/views/n;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->m:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v0, v0, Lcfz;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v0, v0, Lcfz;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/n;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/n;->j()V

    goto :goto_0
.end method

.method public final f(I)V
    .locals 6

    const/4 v5, 0x1

    iget v0, p0, Lcom/unionpay/mpay/views/n;->s:I

    iput v0, p0, Lcom/unionpay/mpay/views/n;->t:I

    iput p1, p0, Lcom/unionpay/mpay/views/n;->s:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/n;->a:Lcfz;

    iget-object v0, v0, Lcfz;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/mpay/views/n;->g:Z

    iput v5, p0, Lcom/unionpay/mpay/views/n;->l:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/n;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v2, "1"

    const-string v3, "1"

    const-string v4, "2"

    invoke-static {v2, v0, v3, v4}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->ruleMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v2, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "sid"

    iget-object v3, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v2, Lcck;->c:Ljava/util/HashMap;

    const-string v0, "rule"

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    return-void
.end method
