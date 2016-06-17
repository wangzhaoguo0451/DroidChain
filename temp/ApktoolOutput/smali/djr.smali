.class public final Ldjr;
.super Ljava/lang/Object;
.source "NotificationCallback.java"


# instance fields
.field public synthetic a:Lcom/wandoujia/push/protocol/NotificationModel;

.field public synthetic b:Lcom/wandoujia/appmanager/LocalAppInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/push/protocol/NotificationModel;Lcom/wandoujia/appmanager/LocalAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Ldjr;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    iput-object p2, p0, Ldjr;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
