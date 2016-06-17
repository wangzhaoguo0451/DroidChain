.class public final Lfpg;
.super Ljava/lang/Object;
.source "ConnectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lfpg;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lfpg;->a:Lcom/wandoujia/p4/connection/ui/ConnectionFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Lgqr;

    move-result-object v0

    invoke-virtual {v0}, Lgqr;->dismiss()V

    .line 341
    return-void
.end method
