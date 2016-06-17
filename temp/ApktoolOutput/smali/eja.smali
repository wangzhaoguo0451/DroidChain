.class public final Leja;
.super Ljava/lang/Object;
.source "StatefulProgressButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Leja;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Leja;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    iget-object v1, p0, Leja;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    invoke-static {v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;->a(Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;->setProgress(F)V

    .line 85
    return-void
.end method
