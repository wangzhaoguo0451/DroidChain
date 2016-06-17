.class public final Lddt;
.super Ljava/lang/Object;
.source "DownloadInjectorEvent.java"


# instance fields
.field public final a:Lcom/wandoujia/ripple_framework/model/Model;

.field public final b:Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lddt;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 16
    iput-object p2, p0, Lddt;->b:Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;

    .line 17
    return-void
.end method
