.class public Lcom/wandoujia/p4/app/detail/activity/ReportActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "ReportActivity.java"


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Levs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    .line 279
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v1, "report_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->d:Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f0301c2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->setContentView(I)V

    .line 80
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "report_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->d:Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    .line 82
    :cond_0
    const v0, 0x7f0c0414

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->a:Landroid/widget/GridView;

    const v0, 0x7f0c0415

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0c0281

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c:Landroid/widget/Button;

    new-instance v1, Levr;

    invoke-direct {v1, p0}, Levr;-><init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x1

    const v3, 0x7f0e0121

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x2

    const v3, 0x7f0e011b

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x3

    const v3, 0x7f0e0120

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x4

    const v3, 0x7f0e011a

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x5

    const v3, 0x7f0e0124

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x6

    const v3, 0x7f0e0119

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/4 v2, 0x7

    const v3, 0x7f0e011f

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const/16 v2, 0x8

    const v3, 0x7f0e011c

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    new-instance v1, Levs;

    const v2, 0x7f0e011e

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Levs;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Levt;

    invoke-direct {v0, p0, v4}, Levt;-><init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;B)V

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->e:Ljava/util/List;

    iput-object v1, v0, Levt;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->a:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method
