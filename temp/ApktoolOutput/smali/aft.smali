.class final Laft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laft;->a:Lafs;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Laft;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lafz;->a(Landroid/widget/EditText;)V

    .line 178
    return-void
.end method
