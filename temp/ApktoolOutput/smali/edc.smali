.class public final Ledc;
.super Ljava/lang/Object;
.source "UninstallGamePopupView.java"


# instance fields
.field public synthetic a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

.field public synthetic b:I

.field public synthetic c:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

.field public synthetic d:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;ILcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Ledc;->d:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    iput-object p2, p0, Ledc;->a:Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    iput p3, p0, Ledc;->b:I

    iput-object p4, p0, Ledc;->c:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
