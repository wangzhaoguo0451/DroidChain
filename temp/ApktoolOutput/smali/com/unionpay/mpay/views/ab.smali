.class public final Lcom/unionpay/mpay/views/ab;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/a$b;
.implements Lcom/unionpay/mpay_2/upview/listview/g$a;


# instance fields
.field private l:I

.field private m:I

.field private n:Landroid/widget/Button;

.field private o:Lcom/unionpay/mpay_2/upview/a;

.field private p:Lcom/unionpay/mpay_2/upview/listview/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/unionpay/mpay/views/ab;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/mpay/views/ab;->m:I

    iput-object v1, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    iput-object v1, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    iput-object v1, p0, Lcom/unionpay/mpay/views/ab;->p:Lcom/unionpay/mpay_2/upview/listview/g;

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mpay/views/ab;->f:I

    const v0, -0x10406

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Lcom/unionpay/mpay/views/ab;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/ab;)Lcom/unionpay/mpay_2/upview/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/views/ab;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mpay/views/ab;->l:I

    iput-boolean v3, p0, Lcom/unionpay/mpay/views/ab;->g:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    const-string v0, "\"user_id\":\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v2, v2, Lcfz;->l:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/unionpay/mpay/views/ab;->l:I

    iput-boolean v3, p0, Lcom/unionpay/mpay/views/ab;->g:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v1, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/utils/UPPayEngine;->getloginrules(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v2, v1}, Lcck;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "sid"

    iget-object v3, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v1, v2, Lcck;->c:Ljava/util/HashMap;

    const-string v1, "getloginrules"

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/unionpay/mpay/views/ab;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/unionpay/mpay/views/ab;->g:Z

    iput v2, p0, Lcom/unionpay/mpay/views/ab;->l:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    const-string v3, "pan"

    invoke-virtual {v2, v3}, Lcom/unionpay/mpay_2/upview/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcfz;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    const-string v2, "0"

    iput-object v2, v1, Lcfz;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->A:Ljava/lang/String;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "1"

    invoke-static {v1, v0, v2, v3}, Ld;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v2, v2, Lcfz;->e:Lorg/json/JSONObject;

    invoke-static {v2}, Ld;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/unionpay/mpay/views/ab;->g:Z

    iput v2, p0, Lcom/unionpay/mpay/views/ab;->l:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget v1, v1, Lcfz;->B:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget v1, v1, Lcfz;->B:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    const-string v2, "1"

    iput-object v2, v1, Lcfz;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->A:Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "1"

    invoke-static {v1, v0, v2, v3}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    const-string v1, "0"

    iput-object v1, v0, Lcfz;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget v1, v1, Lcfz;->B:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\"pan\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    const-string v3, "1"

    invoke-static {v1, v0, v2, v3}, Ld;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private l()Landroid/widget/Button;
    .locals 6

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->e:Lorg/json/JSONObject;

    const-string v2, "label"

    invoke-static {v1, v2}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, -0x4000

    const/high16 v4, 0x6600

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->c:Lccn;

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2, v5, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcde;

    invoke-direct {v1, p0}, Lcde;-><init>(Lcom/unionpay/mpay/views/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 11

    const/high16 v10, 0x41a0

    const/high16 v7, 0x4160

    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v0, Lccd;->b:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-boolean v4, v0, Lcfz;->y:Z

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/unionpay/mpay_2/upview/a;

    iget-object v5, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v6, v6, Lcfz;->k:Lorg/json/JSONArray;

    invoke-direct {v0, v5, v6, p0}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mpay_2/upview/a$b;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    iget-object v0, v0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const-string v5, "pan"

    invoke-static {v0, v5}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/unionpay/mpay/widgets/s;

    iget-object v5, v0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    const/high16 v6, 0x4188

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    iget-object v5, v0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_1
    iget-object v5, v0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    const v5, -0xea7568

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/unionpay/mpay_2/upwidget/e;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/e;

    move-result-object v0

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/unionpay/mpay_2/upwidget/e;->a(Ljava/lang/String;)V

    new-instance v5, Lcda;

    invoke-direct {v5, p0}, Lcda;-><init>(Lcom/unionpay/mpay/views/ab;)V

    invoke-virtual {v0, v5}, Lcom/unionpay/mpay_2/upwidget/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v6, Lccd;->e:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sget v6, Lccd;->e:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-direct {p0}, Lcom/unionpay/mpay/views/ab;->l()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    iget-object v5, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lccd;->j:I

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lccd;->e:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->m:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->m:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Lccg;->ab:Lccg;

    iget-object v4, v4, Lccg;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0x666667

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lccd;->e:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v5, Lccd;->e:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->c:Lccn;

    const/16 v4, 0x3f4

    invoke-virtual {v1, v4, v8, v8}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/unionpay/mpay/views/ab;->c:Lccn;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5, v8, v8}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lcom/unionpay/mpay_2/upwidget/f;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay_2/upwidget/f;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Lcom/unionpay/mpay_2/upwidget/f;->a(F)V

    new-instance v0, Lcdb;

    invoke-direct {v0, p0}, Lcdb;-><init>(Lcom/unionpay/mpay/views/ab;)V

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay_2/upwidget/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lccd;->e:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move-object v0, v2

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Lccg;->ab:Lccg;

    iget-object v4, v4, Lccg;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4188

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0xea7568

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lccd;->a:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v4, Lccd;->e:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Lccg;->ab:Lccg;

    iget-object v4, v4, Lccg;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0x666667

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mpay_2/upview/listview/g;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    invoke-direct {v1, v2, v4, p0}, Lcom/unionpay/mpay_2/upview/listview/g;-><init>(Landroid/content/Context;Lcfz;Lcom/unionpay/mpay_2/upview/listview/g$a;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/ab;->p:Lcom/unionpay/mpay_2/upview/listview/g;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->e:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->p:Lcom/unionpay/mpay_2/upview/listview/g;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ab;->l()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lccd;->j:I

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->e:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->n:Lorg/json/JSONObject;

    const-string v2, "label"

    invoke-static {v1, v2}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v2, v2, Lcfz;->m:Lorg/json/JSONObject;

    const-string v4, "label"

    invoke-static {v2, v4}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_b

    :cond_a
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    :cond_b
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, -0x666667

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v6, Lccd;->e:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v6, Lccd;->e:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/unionpay/mpay/views/ab;->c:Lccn;

    const/16 v5, 0x3f4

    invoke-virtual {v4, v5, v8, v8}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/unionpay/mpay/views/ab;->c:Lccn;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6, v8, v8}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v6, v6, Lcfz;->n:Lorg/json/JSONObject;

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    iget-object v6, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/unionpay/mpay_2/upwidget/f;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/f;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/unionpay/mpay_2/upwidget/f;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Lcdc;

    invoke-direct {v1, p0}, Lcdc;-><init>(Lcom/unionpay/mpay/views/ab;)V

    invoke-virtual {v6, v1}, Lcom/unionpay/mpay_2/upwidget/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v10}, Lcom/unionpay/mpay_2/upwidget/f;->a(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v7, Lccd;->e:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->m:Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/unionpay/mpay_2/upwidget/f;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay_2/upwidget/f;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Lcom/unionpay/mpay_2/upwidget/f;->a(F)V

    new-instance v2, Lcdd;

    invoke-direct {v2, p0}, Lcdd;-><init>(Lcom/unionpay/mpay/views/ab;)V

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay_2/upwidget/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lccd;->e:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public final a(Lcex;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    invoke-virtual {v0}, Lcem;->b()V

    iget v0, p0, Lcom/unionpay/mpay/views/ab;->l:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    invoke-static {v0, p1, v1}, Ld;->a(Lcfz;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->c(I)V

    :cond_0
    :goto_1
    iput v1, p0, Lcom/unionpay/mpay/views/ab;->l:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->o:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->o:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->e(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->s:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->s:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->e(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    const-string v3, "login_rules"

    invoke-static {p1, v3}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v0, Lcfz;->K:Lorg/json/JSONArray;

    const-string v3, "register_url"

    invoke-static {p1, v3}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcfz;->L:Lorg/json/JSONObject;

    iget-object v3, v0, Lcfz;->K:Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcfz;->K:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/unionpay/mpay/views/ab;->c(I)V

    :goto_3
    iput v1, p0, Lcom/unionpay/mpay/views/ab;->l:I

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->e(I)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->p:Lcom/unionpay/mpay_2/upview/listview/g;

    iget v2, p0, Lcom/unionpay/mpay/views/ab;->m:I

    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v4, v3, Lcfz;->h:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcfz;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v3, v3, Lcfz;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v3, v3, Lcfz;->h:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v3, v3, Lcfz;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget v3, v3, Lcfz;->B:I

    if-ne v2, v3, :cond_9

    iget-object v2, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iput v1, v2, Lcfz;->B:I

    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->a()V

    :goto_5
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iput v5, v0, Lcfz;->B:I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/ab;->a()V

    :cond_8
    iput v1, p0, Lcom/unionpay/mpay/views/ab;->l:I

    goto/16 :goto_0

    :cond_9
    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget v3, v3, Lcfz;->B:I

    if-ge v2, v3, :cond_6

    iget-object v2, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget v3, v2, Lcfz;->B:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcfz;->B:I

    goto :goto_4

    :cond_a
    iget-object v0, v0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iput v5, v0, Lcfz;->B:I

    goto :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    invoke-static {v0, p1}, Ld;->b(Lcfz;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->c(I)V

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ab;->e(I)V

    iput v1, p0, Lcom/unionpay/mpay/views/ab;->l:I

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_2

    nop

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

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->n:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v1, v1, Lcfz;->f:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/mpay/widgets/ag;

    iget-object v3, p0, Lcom/unionpay/mpay/views/ab;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-boolean v0, v0, Lcfz;->y:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->c()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcfz;->y:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcdf;

    invoke-direct {v0, p0}, Lcdf;-><init>(Lcom/unionpay/mpay/views/ab;)V

    new-instance v1, Lcdg;

    invoke-direct {v1, p0}, Lcdg;-><init>(Lcom/unionpay/mpay/views/ab;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    invoke-virtual {v2, v0, v1}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->E:Ljava/lang/String;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->L:Ljava/lang/String;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->C:Ljava/lang/String;

    sget-object v4, Lccg;->ab:Lccg;

    iget-object v4, v4, Lccg;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f(I)V
    .locals 4

    iput p1, p0, Lcom/unionpay/mpay/views/ab;->m:I

    iget v0, p0, Lcom/unionpay/mpay/views/ab;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->p:Lcom/unionpay/mpay_2/upview/listview/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->p:Lcom/unionpay/mpay_2/upview/listview/g;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/g;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mpay/views/ab;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mpay/views/ab;->g:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ab;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->unBoundMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v2, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "sid"

    iget-object v3, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v2, Lcck;->c:Ljava/util/HashMap;

    const-string v0, "unbindcard"

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ab;->o:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->clearFocus()V

    :cond_0
    return-void
.end method
