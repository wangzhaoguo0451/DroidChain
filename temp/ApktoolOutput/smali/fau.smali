.class public final Lfau;
.super Ljava/lang/Object;
.source "StatefulProgressButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/button/views/StatefulProgressButton;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lfau;->a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lfau;->a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    iget-object v1, p0, Lfau;->a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    invoke-static {v1}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->a(Lcom/wandoujia/p4/button/views/StatefulProgressButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->setProgress(F)V

    .line 85
    return-void
.end method
