.class public final Lewv;
.super Ljava/lang/Object;
.source "OperationBar.java"

# interfaces
.implements Lfar;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/view/OperationBar;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/view/OperationBar;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lewv;->a:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lewv;->a:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->a(Lcom/wandoujia/p4/app/detail/view/OperationBar;)Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lewv;->a:Lcom/wandoujia/p4/app/detail/view/OperationBar;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->a(Lcom/wandoujia/p4/app/detail/view/OperationBar;)Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    move-result-object v0

    return-object v0
.end method
