.class public final Lgbo;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/settings/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lgbo;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 217
    new-instance v0, Lgbp;

    invoke-direct {v0, p0}, Lgbp;-><init>(Lgbo;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method
