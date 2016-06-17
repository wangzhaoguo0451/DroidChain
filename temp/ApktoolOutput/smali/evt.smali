.class public final Levt;
.super Landroid/widget/BaseAdapter;
.source "ReportActivity.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Levs;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Levt;->b:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Levt;-><init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Levt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Levt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 255
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    if-nez p2, :cond_0

    .line 261
    iget-object v0, p0, Levt;->b:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    const v1, 0x7f0301c3

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 265
    :goto_0
    invoke-virtual {p0, p1}, Levt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levs;

    move-object v1, v2

    .line 266
    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, v0, Levs;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 267
    check-cast v1, Landroid/widget/CheckBox;

    new-instance v3, Levu;

    invoke-direct {v3, v0}, Levu;-><init>(Levs;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
