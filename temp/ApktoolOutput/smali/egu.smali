.class public final Legu;
.super Ljava/lang/Object;
.source "CommonViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Legu;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Legu;->a:Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    .line 75
    return-void
.end method
