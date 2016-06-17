.class final Lezg;
.super Ljava/lang/Object;
.source "CleanCell.java"

# interfaces
.implements Leyg;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

.field final synthetic b:Lezf;


# direct methods
.method constructor <init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lezg;->b:Lezf;

    iput-object p2, p0, Lezg;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lezg;->b:Lezf;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lezf;->e:J

    .line 81
    invoke-static {}, Lezf;->a()I

    move-result v0

    .line 82
    iget-object v1, p0, Lezg;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    new-instance v2, Lezh;

    invoke-direct {v2, p0, v0}, Lezh;-><init>(Lezg;I)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
