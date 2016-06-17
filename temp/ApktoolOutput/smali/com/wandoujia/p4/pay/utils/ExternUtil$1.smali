.class final Lcom/wandoujia/p4/pay/utils/ExternUtil$1;
.super Ljava/lang/Object;
.source "ExternUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wandoujia/p4/pay/utils/ExternUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/pay/utils/ExternUtil$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-void
.end method
