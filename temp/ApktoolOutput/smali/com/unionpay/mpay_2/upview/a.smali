.class public final Lcom/unionpay/mpay_2/upview/a;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mpay/widgets/n$a;
.implements Lcom/unionpay/mpay/widgets/u$a;
.implements Lcom/unionpay/mpay/widgets/z$a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mpay/widgets/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/unionpay/mpay_2/upview/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;ILcom/unionpay/mpay_2/upview/a$b;Ljava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay_2/upview/a;->c:I

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    iput-object p1, p0, Lcom/unionpay/mpay_2/upview/a;->b:Landroid/content/Context;

    iput p3, p0, Lcom/unionpay/mpay_2/upview/a;->c:I

    iput-object p4, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/a;->setOrientation(I)V

    invoke-virtual {p0, p2, p5, p6}, Lcom/unionpay/mpay_2/upview/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mpay_2/upview/a$b;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;ILcom/unionpay/mpay_2/upview/a$b;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/mpay/widgets/m;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unionpay/mpay/widgets/m;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    iget-object v2, v0, Lcom/unionpay/mpay/widgets/ah;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcex;
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Lcex;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcex;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const-string v2, "pin"

    invoke-static {v1, v2}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/m;->c()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->P:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcex;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcex;->a()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/m;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->Q:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcex;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/m;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcex;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Z)Lcex;
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcex;

    const-string v0, ""

    invoke-direct {v3, v0}, Lcex;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/m;->c()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->P:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcex;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcex;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/m;->a()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->Q:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcex;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    instance-of v5, v0, Lcom/unionpay/mpay/widgets/q;

    if-nez v5, :cond_5

    instance-of v0, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/m;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v3, v2, v0}, Lcex;->a(ILjava/lang/String;)V

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Lcom/unionpay/mpay/widgets/h;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    invoke-interface {v1, v0}, Lcom/unionpay/mpay_2/upview/a$b;->a(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mpay/widgets/m;

    instance-of v0, v1, Lcom/unionpay/mpay/widgets/n;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/n;

    invoke-virtual {v0, p1}, Lcom/unionpay/mpay/widgets/n;->a(Lcom/unionpay/mpay/widgets/h;)Z

    move-result v0

    if-nez v0, :cond_3

    check-cast v1, Lcom/unionpay/mpay/widgets/n;

    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/n;->c()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/unionpay/mpay/widgets/m;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    instance-of v0, p1, Lcom/unionpay/mpay/widgets/z;

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    new-instance v1, Lcex;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcex;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const-string v2, "mobile"

    invoke-static {v0, v2}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const-string v3, "pan"

    invoke-static {v0, v3}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v3

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const-string v4, "card"

    invoke-static {v0, v4}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v4

    const-string v0, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/unionpay/mpay/widgets/m;->c()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->P:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcex;->a(ILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcex;->a()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    invoke-interface {v0, v1}, Lcom/unionpay/mpay_2/upview/a$b;->a(Lcex;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/unionpay/mpay/widgets/m;->a()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->Q:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcex;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/unionpay/mpay/widgets/m;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/unionpay/mpay/widgets/m;->c()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->P:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v2, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcex;->a(ILjava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcex;->a()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    invoke-interface {v0, v1}, Lcom/unionpay/mpay_2/upview/a$b;->a(Lcex;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/unionpay/mpay/widgets/m;->a()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->Q:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    aput-object v2, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcex;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/unionpay/mpay/widgets/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v0, ","

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/unionpay/mpay/widgets/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/unionpay/mpay/widgets/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {v1, v7, v0}, Lcex;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    invoke-interface {v0, v1}, Lcom/unionpay/mpay_2/upview/a$b;->a(Lcex;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, ","

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->d:Lcom/unionpay/mpay_2/upview/a$b;

    invoke-interface {v0, p1}, Lcom/unionpay/mpay_2/upview/a$b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/a;->removeAllViews()V

    sget v5, Lccd;->e:I

    sget v1, Lccd;->B:I

    sget v2, Lccd;->e:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v6, v1, v2

    move v2, v0

    move-object v1, v3

    move-object v0, v3

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/unionpay/mpay_2/upview/a;->b:Landroid/content/Context;

    const-string v4, "type"

    invoke-static {v7, v4}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "pan"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v4, Lcom/unionpay/mpay/widgets/s;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/s;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_2

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move-object v10, v1

    move-object v1, v4

    move-object v4, v10

    :goto_3
    if-eqz v1, :cond_5

    instance-of v0, v1, Lcom/unionpay/mpay/widgets/UPPinWidget;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget v7, p0, Lcom/unionpay/mpay_2/upview/a;->c:I

    iput v7, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;->a:I

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    iput-object p2, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;->c:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    iput-boolean p3, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;->b:Z

    :cond_3
    :goto_4
    instance-of v0, v1, Lcom/unionpay/mpay/widgets/n;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/n;

    iput-object p0, v0, Lcom/unionpay/mpay/widgets/n;->n:Lcom/unionpay/mpay/widgets/n$a;

    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/unionpay/mpay_2/upview/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    :try_start_3
    const-string v9, "mobile"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v4, Lcom/unionpay/mpay/widgets/u;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/u;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_5
    move-object v4, v0

    goto :goto_3

    :cond_8
    const-string v9, "sms"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v4, Lcom/unionpay/mpay/widgets/z;

    const/4 v9, 0x0

    invoke-direct {v4, v8, v6, v7, v9}, Lcom/unionpay/mpay/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;B)V

    goto :goto_2

    :cond_9
    const-string v9, "cvn2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v4, Lcom/unionpay/mpay/widgets/a;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/a;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_2

    :cond_a
    const-string v9, "expire"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v4, Lcom/unionpay/mpay/widgets/af;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/af;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_b
    const-string v9, "pwd"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v4, Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/UPPinWidget;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_c
    const-string v9, "text"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v4, Lcom/unionpay/mpay/widgets/ad;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_d
    const-string v9, "string"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v4, Lcom/unionpay/mpay/widgets/q;

    invoke-direct {v4, v8, v7}, Lcom/unionpay/mpay/widgets/q;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_e
    const-string v9, "cert_id"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v4, Lcom/unionpay/mpay/widgets/b;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/b;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_f
    const-string v9, "cert_type"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    new-instance v4, Lcom/unionpay/mpay/widgets/c;

    invoke-direct {v4, v8, v7}, Lcom/unionpay/mpay/widgets/c;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_10
    const-string v9, "name"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v4, Lcom/unionpay/mpay/widgets/r;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/r;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_11
    const-string v9, "hidden"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    new-instance v4, Lcom/unionpay/mpay/widgets/l;

    invoke-direct {v4, v8, v7}, Lcom/unionpay/mpay/widgets/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_12
    const-string v9, "user_name"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v4, Lcom/unionpay/mpay/widgets/ae;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/ae;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_13
    const-string v9, "password"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v4, Lcom/unionpay/mpay/widgets/y;

    invoke-direct {v4, v8, v6, v7}, Lcom/unionpay/mpay/widgets/y;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_14
    instance-of v0, v1, Lcom/unionpay/mpay/widgets/z;

    if-eqz v0, :cond_15

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/z;

    iput-object p0, v0, Lcom/unionpay/mpay/widgets/z;->a:Lcom/unionpay/mpay/widgets/z$a;

    goto/16 :goto_4

    :cond_15
    instance-of v0, v1, Lcom/unionpay/mpay/widgets/u;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mpay/widgets/u;

    iput-object p0, v0, Lcom/unionpay/mpay/widgets/u;->a:Lcom/unionpay/mpay/widgets/u$a;

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_5

    :catch_2
    move-exception v1

    move-object v1, v4

    goto/16 :goto_5

    :cond_16
    move-object v4, v3

    goto/16 :goto_2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/m;->k()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final b()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    instance-of v1, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/UPPinWidget;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->g()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->b:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/a;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    const-string v1, "sms"

    invoke-static {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mpay/widgets/m;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unionpay/mpay/widgets/z;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/unionpay/mpay/widgets/z;->b:Landroid/os/Handler;

    new-instance v1, Lcei;

    invoke-direct {v1, v0}, Lcei;-><init>(Lcom/unionpay/mpay/widgets/z;)V

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->p:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/unionpay/mpay/widgets/z;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    instance-of v4, v0, Lcom/unionpay/mpay/widgets/n;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/unionpay/mpay/widgets/n;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mpay/widgets/m;

    instance-of v2, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/unionpay/mpay/widgets/a;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/unionpay/mpay/widgets/af;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/unionpay/mpay/widgets/y;

    if-eqz v2, :cond_2

    :cond_3
    check-cast v0, Lcom/unionpay/mpay/widgets/n;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/n;->l()V

    goto :goto_0
.end method
