.class public final Ldim;
.super Lhbe;
.source "LibFragment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Lhow;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct/range {p0 .. p5}, Lhbe;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Lhow;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lhbe;->a(ILandroid/support/v4/app/Fragment;)V

    move-object v0, p2

    .line 338
    check-cast v0, Lcom/wandoujia/jupiter/fragment/ListFragment;

    const v1, 0x7f030182

    iput v1, v0, Lcom/wandoujia/jupiter/fragment/ListFragment;->a:I

    .line 339
    check-cast p2, Lcom/wandoujia/jupiter/fragment/ListFragment;

    new-instance v0, Ldin;

    invoke-direct {v0}, Ldin;-><init>()V

    iput-object v0, p2, Lcom/wandoujia/jupiter/fragment/ListFragment;->b:Lhmx;

    .line 358
    return-void
.end method
