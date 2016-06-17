.class public final Lejb;
.super Ljava/lang/Object;
.source "DataPacketDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lejb;->a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lejb;->a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a:Lejg;

    invoke-virtual {v0, p3}, Lejg;->a(I)V

    .line 78
    return-void
.end method
