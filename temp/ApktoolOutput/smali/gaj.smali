.class public final Lgaj;
.super Ljava/lang/Object;
.source "NetCheckEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lgaj;->c:Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;

    iput-object p2, p0, Lgaj;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lgaj;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lgaj;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lgaj;->c:Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->setUdid(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lgaj;->c:Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    iget-object v1, p0, Lgaj;->c:Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;

    invoke-virtual {v0, v1}, Lag;->a(Landroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 46
    :cond_0
    iget-object v0, p0, Lgaj;->c:Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->EMAIL:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lgaj;->b:Landroid/view/View;

    const v1, 0x7f0c015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
